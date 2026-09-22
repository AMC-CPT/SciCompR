a = 2; b = 3; y = 0.4
c(completeBeta = beta(a, b),
  incompleteRaw = integrate(function(t) t^(a-1)*(1-t)^(b-1), 0, y)$value,
  normalized = betai(a, b, y),
  cdf = pbeta(y, a, b))
