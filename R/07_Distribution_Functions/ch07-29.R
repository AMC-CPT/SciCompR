set.seed(29)
par(mfrow = c(1, 3), mar = c(3.2, 3.4, 1.8, 0.6), mgp = c(2.1, 0.7, 0))
for (n in c(1, 5, 30)) {
  mv = colMeans(matrix(rexp(20000 * n, rate = 1), nrow = n))
  hist(mv, breaks = 40, freq = FALSE, col = "grey88", border = "white",
       main = paste0("n = ", n), xlab = "sample mean", ylab = "density")
  xg = seq(min(mv), max(mv), length.out = 300)
  lines(xg, dnorm(xg, 1, 1/sqrt(n)), lwd = 1.8)
}
