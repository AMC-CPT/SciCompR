par(mfrow = c(2, 2), mar = c(3.2, 3.4, 1.6, 0.6), mgp = c(2.1, 0.7, 0))
Check = function(x, f, main) {
  hist(x, breaks = 50, freq = FALSE, col = "grey88", border = "white",
       xlab = "x", ylab = "density", main = main)
  g = seq(min(x), max(x), length.out = 400)
  lines(g, f(g), lwd = 1.8)
}
set.seed(8); Check(Rnorm(1e5), dnorm, "Rnorm(1e5)")
set.seed(8); Check(Rexp(1e5, 0.5), function(g) dexp(g, 0.5), "Rexp(1e5, 0.5)")
set.seed(8); Check(Rgamma(1e5, 2, 3), function(g) dgamma(g, 2, scale = 3),
                   "Rgamma(1e5, 2, 3)")
set.seed(8); Check(Rbeta(1e5, 2, 5), function(g) dbeta(g, 2, 5),
                   "Rbeta(1e5, 2, 5)")
