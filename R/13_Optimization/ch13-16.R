fp = function(x) x^3 - 2*x - 3        # 어떤 f 의 도함수라고 본다
x1 = 2.8; x2 = 2.0
sl = 3*x2^2 - 2                       # 접선 기울기, 곧 f''(x_k)
sc = (fp(x2) - fp(x1)) / (x2 - x1)    # 할선 기울기

par(mar = c(3.2, 3.6, 0.6, 0.6), mgp = c(2.3, 0.7, 0))
curve(fp, 1.5, 3.0, xlab = "x", ylab = "f'(x)", lwd = 1.5)
abline(h = 0, col = "grey60")
curve(fp(x2) + sl*(x - x2), 1.5, 3.0, add = TRUE)
curve(fp(x2) + sc*(x - x2), 1.5, 3.0, add = TRUE, lty = 2)
points(c(x1, x2), fp(c(x1, x2)), pch = 19)
points(c(x2 - fp(x2)/sl, x2 - fp(x2)/sc), c(0, 0), pch = c(2, 6))
text(c(x1, x2), fp(c(x1, x2)), c("x(k-1)", "x(k)"), pos = c(2, 4), cex = 0.85)
legend("topleft", c("tangent", "chord"), lty = 1:2, pch = c(2, 6),
       bty = "n", cex = 0.8)
