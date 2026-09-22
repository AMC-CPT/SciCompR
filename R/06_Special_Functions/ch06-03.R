x = 1
bound  = function(n) exp(1) * abs(x)^(n + 1) / factorial(n + 1)
actual = function(n) abs(exp(x) - Tn(x, n))

cbind(n, actual = sapply(n, actual), bound = sapply(n, bound))
