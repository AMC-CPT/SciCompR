av = c(1, 2, 3, 5)
FamPlot(seq(0.001, 20, length.out = 700),
        lapply(av, function(a) { force(a)
          function(x) dgamma(x, shape = a, scale = 2) }),
        paste0("gamma(a = ", av, ", b = 2)"), ylim = c(0, 0.5),
        under = function(x) dchisq(x, 4), ulab = "chi-square(4)")
