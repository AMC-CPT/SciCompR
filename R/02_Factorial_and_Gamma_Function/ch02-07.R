n = c(1, 5, 10, 50, 100, 170)
setNames(signif(sapply(n, tableFactorial), 3), paste0(n, "!"))
