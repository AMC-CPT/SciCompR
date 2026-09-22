# =====================================================================
#  build.R  -  re-run the book's R code and remake output/ and figures/
#
#  Run from the repository root:
#      Rscript build.R              every chapter
#      Rscript build.R 11           chapter 11 only
#      Rscript build.R 11 12 appA   several
#
#  Each chapter runs in ONE R session, blocks in the order the book
#  prints them, so a later block sees what an earlier one defined.
#  That is why the blocks are separate files but not separately runnable.
#
#  R packages: evaluate, mathr, wnl, deSolve, numDeriv, MASS.
#  mathr is not on CRAN:  remotes::install_github("ksbae/mathr")
# =====================================================================
if (!file.exists("R/manifest.tsv"))
  stop("Run from the repository root (where R/manifest.tsv lives).")

suppressPackageStartupMessages(library(evaluate))

man <- read.table("R/manifest.tsv", sep = "\t", header = TRUE, quote = "",
                  comment.char = "", colClasses = "character")

want <- commandArgs(trailingOnly = TRUE)
if (length(want)) {
  key <- sub("^ch", "", want)
  key <- ifelse(grepl("^[0-9]+$", key), sprintf("ch%02d", as.integer(key)), want)
  man <- man[sub("-.*$", "", man$id) %in% key, , drop = FALSE]
  if (!nrow(man)) stop("no such chapter: ", paste(want, collapse = " "))
}

dir.create("output",  showWarnings = FALSE)
dir.create("figures", showWarnings = FALSE)

#  The session settings the book was frozen with.
#  width = 80 is the code width of the 7x10in page (99 columns) less 19.
#  useFancyQuotes = FALSE keeps R's curly quotes out of the typeset output:
#  the book's font has no glyph for them.
OPTS <- list(width = 80, digits = 7, useFancyQuotes = FALSE,
             stringsAsFactors = FALSE, warn = 1)

render_one <- function(x) {
  if (is.character(x)) return(x)
  if (inherits(x, "warning"))
    return(paste0("Warning message:\n", conditionMessage(x)))
  if (inherits(x, "message")) return(conditionMessage(x))
  if (inherits(x, "error")) return(paste0("Error: ", conditionMessage(x)))
  ""
}

run_chapter <- function(stem, rows) {
  old <- options(OPTS)
  on.exit(options(old), add = TRUE)
  env <- new.env(parent = globalenv())
  suppressPackageStartupMessages(library(mathr))

  # a null device, so a stray plot outside a figure block makes no Rplots.pdf
  grDevices::pdf(NULL)
  null_dev <- grDevices::dev.cur()
  on.exit(grDevices::graphics.off(), add = TRUE)

  n_ok <- 0L; n_err <- 0L; n_skip <- 0L
  for (i in seq_len(nrow(rows))) {
    id <- rows$id[i]
    code <- readLines(file.path("R", stem, paste0(id, ".R")),
                      warn = FALSE, encoding = "UTF-8")

    if (rows$noeval[i] == "1") { n_skip <- n_skip + 1L; next }

    has_fig <- nzchar(rows$fig[i])
    if (has_fig) {
      # cairo_pdf(), not pdf(): pdf() does not embed Helvetica, and a figure
      # with an unembedded font cannot go to a printer. Arial is a default
      # Windows font, so the figure comes out the same wherever it is remade.
      grDevices::cairo_pdf(file.path("figures", paste0(rows$fig[i], ".pdf")),
                           width = as.numeric(rows$w[i]),
                           height = as.numeric(rows$h[i]),
                           pointsize = 9, family = "Arial")
    }

    res <- evaluate::evaluate(paste(code, collapse = "\n"), envir = env,
                              new_device = FALSE, stop_on_error = 0L,
                              output_handler = evaluate::new_output_handler(
                                value = function(v, visible)
                                  if (visible) print(v) else invisible(NULL)))

    if (has_fig) { grDevices::dev.off(); grDevices::dev.set(null_dev) }

    # The code itself is already printed in the book, so only the console
    # output and the conditions are kept.
    keep <- vapply(res, function(x) !inherits(x, "source") &&
                     !inherits(x, "recordedplot"), logical(1))
    txt <- sub("\n+$", "",
               paste(unlist(lapply(res[keep], render_one), use.names = FALSE),
                     collapse = ""))
    # Write LF even on Windows. The repository is LF (.gitattributes), so a
    # reader who rebuilds sees a clean `git status` instead of 292 files that
    # differ only in their line endings.
    f <- file.path("output", paste0(id, ".txt"))
    if (nzchar(txt)) {
      con <- file(f, open = "wb")
      writeLines(strsplit(txt, "\n", fixed = TRUE)[[1]], con, sep = "\n")
      close(con)
    } else if (file.exists(f)) file.remove(f)

    if (length(Filter(function(x) inherits(x, "error"), res))) {
      n_err <- n_err + 1L
      message("  error in ", id)
    } else n_ok <- n_ok + 1L
  }
  c(ok = n_ok, error = n_err, skipped = n_skip)
}

tot <- c(ok = 0L, error = 0L, skipped = 0L)
for (stem in unique(man$chapter)) {
  rows <- man[man$chapter == stem, , drop = FALSE]
  message(stem, " (", nrow(rows), " blocks)")
  tot <- tot + run_chapter(stem, rows)
}
message(sprintf("\ndone.  %d ok, %d error, %d skipped (noeval)",
                tot["ok"], tot["error"], tot["skipped"]))
if (tot["error"] > 0) quit(status = 1)
