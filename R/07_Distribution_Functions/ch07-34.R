nv = c(1, 2, 5, 30)
FamPlot(seq(-4.5, 4.5, length.out = 600),
        lapply(nv, function(v) { force(v); function(x) dt(x, v) }),
        paste0("t(", nv, ")"), ylim = c(0, 0.42), xlab = "t", ylab = "f(t)",
        under = dnorm, ulab = "N(0, 1)")
