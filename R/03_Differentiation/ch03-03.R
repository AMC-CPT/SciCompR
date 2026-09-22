Gs = function(s) log(2*s^2 - 2*s + 4)
sg = seq(0, 4.4, length.out = 400)

par(mar = c(3.4, 3.4, 1.0, 0.8), mgp = c(2.1, 0.7, 0))
plot(sg, Gs(sg), type = "l", xlim = c(0, 4.4), ylim = c(0, 4.4),
     xlab = "s", ylab = "t", asp = 1, lwd = 1.6)
lines(Gs(sg), sg, lty = 2, lwd = 1.6)          # 좌표를 맞바꾸면 역함수다
abline(0, 1, col = "grey70", lty = 3)
points(c(3, log(16)), c(log(16), 3), pch = 19)
text(3, log(16), "(3, ln16)", pos = 4, cex = 0.95)
text(log(16), 3, "(ln16, 3)", pos = 2, cex = 0.95)
legend("topleft", c("t = g(s)", "s = f(t)"), lty = c(1, 2), lwd = 1.6,
       bty = "n", cex = 0.95)
