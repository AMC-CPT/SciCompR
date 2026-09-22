Fs = function(x) exp(0.9*x)
Ds = function(x) 0.9*exp(0.9*x)          # 손으로 구한 도함수
xg = seq(0, 2.4, length.out = 400)
a  = 0.4

par(mfrow = c(1, 2), mar = c(3.4, 3.4, 2.0, 0.8), mgp = c(2.1, 0.7, 0))
plot(xg, Fs(xg), type = "l", lwd = 1.6, col = "grey55",
     xlab = "x", ylab = "f(x)", main = "secant to tangent")
for (h in c(1.6, 1.0, 0.5)) {
  Sl = (Fs(a + h) - Fs(a))/h             # 할선의 기울기
  abline(a = Fs(a) - Sl*a, b = Sl, col = "grey25", lty = 2)
  points(a + h, Fs(a + h), pch = 1, cex = 0.9)
}
abline(a = Fs(a) - Ds(a)*a, b = Ds(a), lwd = 2)
points(a, Fs(a), pch = 19)

plot(xg, Ds(xg), type = "l", lwd = 1.6, xlab = "x", ylab = "f'(x)",
     main = "derivative")
points(a, Ds(a), pch = 19)
