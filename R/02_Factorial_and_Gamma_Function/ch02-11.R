par(mar = c(3.4, 3.6, 0.8, 0.8), mgp = c(2.2, 0.7, 0))
plot(NA, xlim = c(-4, 5), ylim = c(-6, 7), xlab = "x", ylab = "Gamma(x)")
abline(h = 0, v = 0, col = "grey75")
abline(v = -(0:4), lty = 3, col = "grey55")

for (k in 0:3) {                          # 극과 극 사이의 가지
  xs = seq(-k - 0.995, -k - 0.005, length = 400)
  lines(xs, gamma(xs), lwd = 1.8, col = "#1F5673")
}
xp = seq(0.04, 5, length = 800)           # 양의 반직선
lines(xp, gamma(xp), lwd = 1.8, col = "#1F5673")

points(1:4, gamma(1:4), pch = 21, bg = "white", cex = 1.0)
points(1.461632, gamma(1.461632), pch = 4, col = "#B4451F", cex = 1.1)
text(1.75, -1.1, "min 0.8856 at x = 1.4616", cex = 0.85,
     col = "#B4451F", adj = 0)
