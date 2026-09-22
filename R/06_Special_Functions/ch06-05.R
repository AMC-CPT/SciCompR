SinSeries = function(x, n)
  sum((-1)^(0:n) * x^(2*(0:n) + 1) / factorial(2*(0:n) + 1))

xs = c(0.5, 2, 10, 30)
cbind(x = xs, series = sapply(xs, SinSeries, n = 30), sin = sin(xs))
