Halflife = function(k) {
  on.exit(cat("cleanup\n"))
  stopifnot(is.numeric(k), length(k) == 1)
  if (k <= 0) stop("k must be positive")
  log(2)/k
}
Halflife(0.1)
tryCatch(Halflife(-1), error = function(e) conditionMessage(e))
tryCatch(Halflife("a"), error = function(e) conditionMessage(e))
