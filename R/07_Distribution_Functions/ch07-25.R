ab = cbind(a = c(0.5, 1, 2, 2, 5), b = c(0.5, 1, 2, 5, 1))
FamPlot(seq(0.002, 0.998, length.out = 600),
        lapply(1:nrow(ab), function(i) { force(i)
          function(x) dbeta(x, ab[i, 1], ab[i, 2]) }),
        paste0("(a, b) = (", ab[, 1], ", ", ab[, 2], ")"),
        ylim = c(0, 3), pos = "top")
