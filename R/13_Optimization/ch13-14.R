Trace = function(x0, n = 12) {
  v = numeric(n + 1); x = x0; v[1] = Wood(x)
  for (i in 1:n) {
    x = as.vector(x - solve(hessian(Wood, x)) %*% grad(Wood, x))
    v[i + 1] = Wood(x)
  }
  return(v)
}
va = Trace(c(-3, -1, -3, -1))
vb = Trace(c(0, 0, 0, 0))

par(mar = c(3.3, 3.8, 0.6, 0.6), mgp = c(2.5, 0.7, 0))
plot(0:12, pmax(va, 1e-30), log = "y", type = "o", pch = 20, cex = 0.7,
     ylim = c(1e-30, 1e5), xlab = "iteration", ylab = "f(x)")
lines(0:12, pmax(vb, 1e-30), type = "o", pch = 1, cex = 0.7, lty = 2)
abline(h = 7.876967, col = "grey50", lty = 3)
legend("topright", c("from (-3,-1,-3,-1)", "from (0,0,0,0)"),
       lty = c(1, 2), pch = c(20, 1), bty = "n", cex = 0.8)
