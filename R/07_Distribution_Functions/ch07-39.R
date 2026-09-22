fp = cbind(n1 = c(1, 3, 10, 30), n2 = c(1, 4, 10, 30))
FamPlot(seq(0.01, 4, length.out = 600),
        lapply(1:nrow(fp), function(i) { force(i)
          function(x) df(x, fp[i, 1], fp[i, 2]) }),
        paste0("F(", fp[, 1], ", ", fp[, 2], ")"), ylim = c(0, 1.5),
        xlab = "f", ylab = "f(f)")
abline(v = 1, col = "grey80", lty = 3)
