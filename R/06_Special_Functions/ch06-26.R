BetaFx = function(z, w) exp(lgamma(z) + lgamma(w) - lgamma(z + w))

a = c(1, 2, 3, 0.5); b = c(1, 3, 4, 0.5)
cbind(a, b, BetaFx = BetaFx(a, b), beta = beta(a, b))
