set.seed(7)
par(mfrow = c(2, 2), mar = c(3.2, 3.4, 1.8, 0.6), mgp = c(2.1, 0.7, 0))
xg = seq(-3.4, 3.4, length.out = 400)
Panel = function(main, upto = NULL) {
  plot(xg, dnorm(xg), type = "n", xlab = "y", ylab = "f(y)", main = main)
  if (!is.null(upto)) {
    xs = xg[xg <= upto]
    polygon(c(xs, upto, xs[1]), c(dnorm(xs), 0, 0), col = "grey82",
            border = NA)
  }
  lines(xg, dnorm(xg), lwd = 1.8)
}
Panel("dnorm(1): height")
segments(1, 0, 1, dnorm(1), lty = 2, lwd = 1.4)
points(1, dnorm(1), pch = 19, cex = 0.9)
Panel("pnorm(0.6): area", 0.6)
Panel("qnorm(0.95): point", qnorm(0.95))
abline(v = qnorm(0.95), lty = 2, lwd = 1.4)
hist(rnorm(500), breaks = 24, freq = FALSE, xlim = c(-3.4, 3.4),
     col = "grey88", border = "white", xlab = "y", ylab = "density",
     main = "rnorm(500): draws")
lines(xg, dnorm(xg), lwd = 1.8)
