set.seed(41)
corPair = function(gen, n = 8, B = 20000) {
  M = matrix(gen(B * n), nrow = n)
  cor(colMeans(M), apply(M, 2, var))
}
c(normal = corPair(function(k) rnorm(k)),
  exponential = corPair(function(k) rexp(k)),
  lognormal = corPair(function(k) rlnorm(k)))
