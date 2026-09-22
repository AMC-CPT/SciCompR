Rexp = function(n, alpha) {
  return(-log(runif(n))/alpha)
}

set.seed(8)
x = Rexp(1e5, 0.1)
c(mean = mean(x), true.mean = 10, sd = sd(x), true.sd = 10)

par(mfrow = c(1, 2), mar = c(3.4, 3.4, 1.6, 0.8), mgp = c(2.1, 0.7, 0))
yg = seq(0, 40, length.out = 400)
plot(yg, pexp(yg, 0.1), type = "l", lwd = 1.8, xlab = "y", ylab = "F(y)",
     main = "u on the y-axis, x on the x-axis")
for (uk in c(0.2, 0.55, 0.9)) {
  segments(0, uk, qexp(uk, 0.1), uk, lty = 2)
  arrows(qexp(uk, 0.1), uk, qexp(uk, 0.1), 0, length = 0.06, lty = 2)
}
hist(x, breaks = 60, freq = FALSE, xlim = c(0, 50), col = "grey88",
     border = "white", xlab = "x", ylab = "density", main = "Rexp(1e5, 0.1)")
lines(yg, dexp(yg, 0.1), lwd = 1.8)
