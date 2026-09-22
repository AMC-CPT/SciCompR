Guarded = function(expr) {
  tryCatch(expr,
    warning = function(w) paste("warning:", conditionMessage(w)),
    error   = function(e) paste("error:",   conditionMessage(e)),
    finally = cat("done\n"))
}
Guarded(log(-1))
Guarded(log("a"))
