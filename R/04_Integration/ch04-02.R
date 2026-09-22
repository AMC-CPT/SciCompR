An = function(n) integrate(function(x) x^n * exp(-x), 0, Inf)$value
cbind(n = 1:6, An = sapply(1:6, An), factorial = factorial(1:6))

c(gamma6 = gamma(6), fact5 = factorial(5))
c(g1 = gamma(1), g_half_sq = gamma(1/2)^2, pi = pi)
