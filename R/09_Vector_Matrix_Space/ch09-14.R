Comb = function(v1, v2, main) {
  s = seq(-5, 5, by = 0.125)                   # 계수를 넓게 훑는다
  g = expand.grid(a = s, b = s)
  P = cbind(g$a * v1[1] + g$b * v2[1], g$a * v1[2] + g$b * v2[2])
  plot(P, pch = 16, cex = 0.25, col = "grey72", asp = 1,
       xlim = c(-4.5, 4.5), ylim = c(-4.5, 4.5),
       xlab = "", ylab = "", main = main, cex.main = 0.95)
  abline(h = 0, v = 0, col = "grey88")
  arrows(0, 0, v1[1], v1[2], length = 0.08, lwd = 2)
  arrows(0, 0, v2[1], v2[2], length = 0.08, lwd = 2, col = "firebrick")
}
par(mfrow = c(1, 2), mar = c(2.2, 2.2, 1.8, 0.6),
    mgp = c(1.2, 0.35, 0), tcl = -0.2)
Comb(c(1, 0), c(0, 2), "independent: spans a plane")
Comb(c(1, 0), c(2, 0), "dependent: spans a line")
