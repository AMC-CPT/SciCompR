Fd = function(x) exp(0.8*x)
x0 = 0; hh = 1.3
xg = seq(-2.1, 2.1, length.out = 300)

par(mar = c(3.4, 3.4, 1.0, 0.8), mgp = c(2.1, 0.7, 0))
plot(xg, Fd(xg), type = "l", lwd = 2.2, col = "grey60",
     xlab = "x", ylab = "f(x)")
Seg = function(sl, lty) {                # x0 을 지나고 기울기가 sl 인 직선
  xs = c(-2.0, 2.0)
  lines(xs, Fd(x0) + sl*(xs - x0), lty = lty, lwd = 1.1)
}
Seg((Fd(x0 + hh) - Fd(x0))/hh, 2)        # 전진차분
Seg((Fd(x0) - Fd(x0 - hh))/hh, 4)        # 후진차분
Seg((Fd(x0 + hh) - Fd(x0 - hh))/(2*hh), 3)   # 중심차분
Seg(0.8, 1)                              # 참값
points(c(x0 - hh, x0, x0 + hh), Fd(c(x0 - hh, x0, x0 + hh)), pch = 19,
       cex = 0.9)
legend("topleft", c("tangent", "forward", "backward", "central"),
       lty = c(1, 2, 4, 3), lwd = 1.1, bty = "n", cex = 0.95)
