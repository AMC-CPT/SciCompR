px = function(x) sin(pi * x)
xs = seq(0, 1, length.out = 400)

par(mar = c(3.4, 3.6, 0.6, 0.6), mgp = c(2.2, 0.7, 0))
plot(xs, px(xs), type = "n", xlab = "x", ylab = "f(x)", xaxt = "n",
     ylim = c(-0.08, 1.15))
polygon(c(xs, rev(xs)), c(px(xs), rep(0, length(xs))), col = "grey88",
        border = NA)
lines(xs, px(xs), lwd = 2)
segments(0, 0, 1, 0, lwd = 2, lty = 2)
points(c(0, 1), c(0, 0), pch = 19)
axis(1, at = c(0, 1), labels = c("a", "b"))
text(0.5, 0.45, "missed by the trapezoid")
