basin = function(x0, max.iter = 300) {
  x = x0
  for (i in 1:max.iter) {
    d = fd2y(x)
    if (!is.finite(d) || d == 0) return(NA)
    xn = x - fdy(x)/d
    if (abs(xn - x) < 1e-10) return(xn)
    x = xn
  }
  NA
}

x0  = seq(-0.5, 4, by = 0.0025); lim = sapply(x0, basin)
a = newton(0.7, 1e-12)[, "x"];   b = newton(1.6, 1e-12)[, "x"]

par(mfrow = c(1, 2), mar = c(3.4, 3.4, 1.4, 0.6), mgp = c(2.1, 0.7, 0))
plot(seq_along(a), a, type = "b", pch = 1, ylim = c(0, 5), xlim = c(1, 11),
     xlab = "iteration", ylab = "x", main = "iterates")
lines(seq_along(b), b, type = "b", pch = 2, lty = 2)
abline(h = c(1, 3), col = "grey70", lty = 3)
legend("topright", c("x0 = 0.7", "x0 = 1.6"), pch = c(1, 2),
       lty = c(1, 2), bty = "n")

plot(x0, lim, pch = ".", cex = 1.6, ylim = c(-0.3, 3.3),
     xlab = "starting point x0", ylab = "root reached", main = "basins")
abline(v = c(0.5759, 1.5703, 2.6537), lty = 3, col = "grey50")
