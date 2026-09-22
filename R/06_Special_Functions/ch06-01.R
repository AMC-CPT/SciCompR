Tn = function(x, n) sum(x^(0:n) / factorial(0:n))

n = c(1, 2, 3, 5, 10, 15)
cbind(n, Tn = sapply(n, function(k) Tn(1, k)),
      error = sapply(n, function(k) Tn(1, k)) - exp(1))
