sv = c(0.25, 0.5, 1, 1.5)
FamPlot(seq(0.001, 6, length.out = 600),
        lapply(sv, function(s) { force(s); function(x) dlnorm(x, 0, s) }),
        paste0("sigma = ", sv), ylim = c(0, 1.7))
abline(v = 1, col = "grey60", lty = 3)
