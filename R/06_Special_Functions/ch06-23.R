par(mar = c(3.4, 3.8, 1.0, 0.6), mgp = c(2.4, 0.7, 0))
plot(0, type = "n", xlim = c(-4, 5), ylim = c(-6, 6),
     xlab = "x", ylab = "Gamma(x)")
abline(h = 0, col = "grey80", lty = 3)
for (k in -4:0) {
  gx = seq(k + 1e-3, k + 1 - 1e-3, length.out = 500)
  lines(gx, gamma(gx), lwd = 1.6)
  abline(v = k, col = "grey80", lty = 3)
}
gx = seq(1e-3, 4.2, length.out = 800)
lines(gx, gamma(gx), lwd = 1.6)
points(1:4, gamma(1:4), pch = 19, cex = 0.7)
