hx = function(x) exp(-x/3) * (1 + 0.6*sin(1.4*x))
xs = seq(0, 4, length.out = 400)

par(mfrow = c(1, 3), mar = c(3.2, 3.2, 1.8, 0.5), mgp = c(2.0, 0.7, 0))
for (k in 1:3) {
  np = 2^(k - 1)
  xk = seq(0, 4, length.out = np + 1)
  plot(xs, hx(xs), type = "n", ylim = c(0, 1.8), xlab = "x", ylab = "f(x)",
       main = paste0("R(", k, ",1):  ", np, " panel(s)"))
  for (i in 1:np) {
    polygon(c(xk[i], xk[i], xk[i + 1], xk[i + 1]),
            c(0, hx(xk[i]), hx(xk[i + 1]), 0),
            col = "grey88", border = "grey45")
  }
  lines(xs, hx(xs), lwd = 2)
  points(xk, hx(xk), pch = 19, cex = 0.9)
}
