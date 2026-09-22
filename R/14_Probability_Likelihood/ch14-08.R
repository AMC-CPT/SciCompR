set.seed(91)
Eff = function(k, B = 2e5) {
  M = matrix(rnorm(B * k, mean = 10, sd = 2), nrow = k)
  c(n = k, var.mean = var(colMeans(M)), var.median = var(apply(M, 2, median)))
}
Tab = t(sapply(c(11, 51, 201), Eff))
cbind(Tab, efficiency = Tab[, "var.median"]/Tab[, "var.mean"],
      limit = pi/2)
