gx = function(x) 3*exp(-x/2) + 0.3          # 아래로 볼록한 함수
xs = seq(0.2, 4.4, length.out = 400)
xa = 1.2; xb = 3.6

par(mar = c(3.4, 3.6, 0.6, 0.6), mgp = c(2.2, 0.7, 0))
plot(xs, gx(xs), type = "n", xlab = "x", ylab = "f(x)", xaxt = "n",
     ylim = c(0, 3.4))
polygon(c(xa, xa, xb, xb), c(0, gx(xa), gx(xb), 0), col = "grey88",
        border = NA)
lines(xs, gx(xs), lwd = 2)
segments(xa, gx(xa), xb, gx(xb), lwd = 2, lty = 2)
segments(c(xa, xb), 0, c(xa, xb), gx(c(xa, xb)), lty = 3)
points(c(xa, xb), gx(c(xa, xb)), pch = 19)
axis(1, at = c(xa, xb), labels = c(expression(x[k]), expression(x[k+1])))
