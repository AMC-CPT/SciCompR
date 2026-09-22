# Scientific Computation with R — example repository

*한국어 설명은 [README.ko.md](README.ko.md) 에 있습니다.*

The companion repository of Minkyu Kim, Jina Lim and Kyun-Seop Bae,
*Scientific Computation with R* (과학 계산 with R). Its purpose is to let a
reader **remake every number, every line of console output and every figure in
the book**; the text of the book is not here.

**The book is written in Korean, and so are the comments in about a fifth of
the code files.** The rest is not language-bound: the file names, the chapter
numbering, the output and the figures are the same in any language, so the code
can be read and run, and your result compared against the book's, without
Korean.

## What is here

This book keeps its R code inside the manuscript, so what is published is what
was extracted from it.

```
R/<chapter>/<id>.R   the 386 code blocks printed in the book (id = the book's block number)
R/manifest.tsv       the order of the blocks and their figure options; build.R reads this
output/<id>.txt      the 292 pieces of console output printed in the book
figures/             the 74 figures the book uses
build.R              re-runs the code and remakes output/ and figures/
```

The chapter directories follow the book's table of contents.

| | | | |
|---|---|---|---|
| 01 Floating-point arithmetic | 05 Integral transforms | 09 Vectors, matrices, spaces | 13 Optimization |
| 02 Factorial and the gamma function | 06 Special functions | 10 Linear systems and decompositions | 14 Probability and likelihood |
| 03 Differentiation | 07 Distribution functions | 11 Differential equations | 15 Statistical inference |
| 04 Integration | 08 Random variate generation | 12 Root finding | appA The R language |

## Running it

```sh
git clone https://github.com/AMC-CPT/SciCompR
cd SciCompR
Rscript build.R            # everything
Rscript build.R 11         # chapter 11 only
Rscript build.R 11 12 appA # several
```

R packages needed: `evaluate`, `mathr`, `wnl`, `deSolve`, `numDeriv`, `MASS`.
Only `mathr` is not on CRAN.

```r
install.packages(c("evaluate", "wnl", "deSolve", "numDeriv", "MASS"))
remotes::install_github("ksbae/mathr")
```

## One chapter is one session

The blocks are separate files, but **they are not separate programs.** A
chapter's blocks run in one R session, in the order the book prints them, so a
later block sees what an earlier one defined. Running
`R/11_Differential_Equation/ch11-07.R` on its own fails, because the six blocks
before it made the things it uses. They are split so that each block of the
book lines up one-to-one with the output it produced.

Ten blocks are marked `noeval` in `manifest.tsv` and `build.R` skips them. They
are pseudocode, function signatures and installation commands — printed **to be
read, not to be run**. One of them, `ch08-20`, is real code, but it fetches data
from `https://r.acr.kr/`, so it is skipped to keep `build.R` working without a
network. To try it, paste that file into R yourself.

## Figures

Figures are made with `cairo_pdf()` with Arial embedded. `pdf()` does not embed
Helvetica, so a figure made with it carries an unembedded font into whatever PDF
includes it, and a printer substitutes something else. Arial is a default
Windows font, so the figure comes out the same wherever it is remade. Off
Windows only the figure's typeface differs; the numbers do not.

Running `build.R` marks **all 74 files in `figures/` as changed.** The drawings
have not changed: a PDF records its creation time, and font subsetting differs
between versions of cairo. What is committed here is the file that went into the
book, so `git checkout -- figures` puts it back. The 292 files in `output/`, by
contrast, **must come back byte for byte.** If even one differs, that is a real
difference, and it means the version of R or of a package you are using is not
the one the book was frozen with.

## Copyright and licence

The copyright in the text of the book belongs to the authors and the publisher,
and the text is not here. The code, the frozen output and the figures in this
repository are published under the **GNU General Public License v3.0 or later**
(`LICENSE`). Running them and changing them is free, and a modified version
distributed to others carries the source under the same terms.

Copyright (C) 2026 Minkyu Kim, Jina Lim, Kyun-Seop Bae. This program is free software:
you can redistribute it and/or modify it under the terms of the GNU General Public
License as published by the Free Software Foundation, either version 3 of the License,
or (at your option) any later version. It is distributed WITHOUT ANY WARRANTY; see
`LICENSE` for details.

## The other books in the series

| | |
|---|---|
| 2 Scientific Inference in Clinical Trials with R | <https://github.com/AMC-CPT/CTDA> |
| 3 Pharmacokinetics with R | <https://github.com/AMC-CPT/PKwR> |
| 4 Pharmacometrics with NONMEM and R | <https://github.com/AMC-CPT/PMx> |
| 5 Essentials of Clinical Drug Development (online appendix) | <https://github.com/AMC-CPT/CDD> |
