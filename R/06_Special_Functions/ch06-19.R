par(mfrow = c(1, 2), mar = c(3.4, 4.0, 1.8, 0.6), mgp = c(2.6, 0.7, 0))

plot(xg3, ChebEval(cof[1:10], 0, 2, xg3) - Erf(xg3), type = "l", lwd = 1.5,
     xlab = "x", ylab = "signed error", main = "Chebyshev, 10 terms")
abline(h = 0, col = "grey70", lty = 3)

plot(xg3, ErfTaylor(xg3, 9) - Erf(xg3), type = "l", lwd = 1.5,
     xlab = "x", ylab = "signed error", main = "Taylor, 10 terms")
abline(h = 0, col = "grey70", lty = 3)
