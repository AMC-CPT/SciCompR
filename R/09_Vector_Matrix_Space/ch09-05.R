u = c(4, 1); v = c(1, 3)
p = as.numeric(sum(u * v) / sum(u * u)) * u    # u 위로의 v 의 사영
par(mar = c(0.4, 0.4, 0.4, 0.4))
plot(0, 0, type = "n", xlim = c(-0.2, 4.8), ylim = c(-0.6, 3.4),
     asp = 1, axes = FALSE, xlab = "", ylab = "")
abline(h = 0, v = 0, col = "grey85")
arrows(0, 0, u[1], u[2], length = 0.10, lwd = 2)
arrows(0, 0, v[1], v[2], length = 0.10, lwd = 2, col = "grey45")
segments(v[1], v[2], p[1], p[2], lty = 2, col = "firebrick")
arrows(0, 0, p[1], p[2], length = 0.10, lwd = 2.5, col = "firebrick")
a1 = atan2(u[2], u[1]); a2 = atan2(v[2], v[1])
tt = seq(a1, a2, length.out = 60)
lines(0.75 * cos(tt), 0.75 * sin(tt))
text(1.1 * cos(mean(c(a1, a2))), 1.1 * sin(mean(c(a1, a2))), "theta")
text(u[1] + 0.2, u[2] + 0.2, "u"); text(v[1] - 0.25, v[2] + 0.2, "v")
text(p[1] + 0.15, p[2] - 0.35, "projection of v on u", col = "firebrick",
     adj = 0)
