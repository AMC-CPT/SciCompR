set.seed(37)
n = 8; sg = 2
W = apply(matrix(rnorm(20000 * n, 10, sg), nrow = n), 2,
          function(v) (n - 1) * var(v)/sg^2)
par(mar = c(3.4, 3.8, 0.8, 0.6), mgp = c(2.4, 0.7, 0))
hist(W, breaks = 60, freq = FALSE, col = "grey88", border = "white",
     xlab = "(n-1) S^2 / sigma^2", ylab = "density", main = "")
xg = seq(0.05, max(W), length.out = 400)
lines(xg, dchisq(xg, n - 1), lwd = 1.9)
