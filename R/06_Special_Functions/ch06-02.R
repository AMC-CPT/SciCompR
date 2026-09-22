par(mfrow = c(1, 2), mar = c(3.4, 3.6, 1.8, 0.6), mgp = c(2.2, 0.7, 0))

xg = seq(-2, 2, length.out = 400)
plot(xg, exp(xg), type = "l", lwd = 2, xlab = "x", ylab = "exp(x)",
     main = "Taylor polynomials at 0")
for (k in 1:3) lines(xg, sapply(xg, Tn, n = k), lty = k + 1, col = "grey40")
legend("topleft", bty = "n", cex = 0.8, lty = 1:4,
       col = c("black", rep("grey40", 3)),
       legend = c("exp(x)", "T1", "T2", "T3"))

err = sapply(c(1, 3, 5, 7),
             function(k) pmax(abs(sapply(xg, Tn, n = k) - exp(xg)), 1e-17))
matplot(xg, err, type = "l", lty = 1:4, col = "grey20", log = "y",
        ylim = c(1e-16, 1e2), xlab = "x", ylab = "absolute error",
        main = "error grows away from 0")
legend("bottomleft", bty = "n", cex = 0.8, lty = 1:4, col = "grey20",
       legend = paste0("n = ", c(1, 3, 5, 7)))
