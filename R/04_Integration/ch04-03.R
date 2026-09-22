lhs = function(x) (3*x^4 - x^3 + 12*x^2 - 4*x + 48)/((x - 2)^2*(x^2 + 4)^2)
rhs = function(x) 2/(x - 2)^2 + 1/(x^2 + 4) + 3*x/(x^2 + 4)^2

xs = c(0, 0.25, 0.5, 0.75, 1)
cbind(x = xs, lhs = lhs(xs), rhs = rhs(xs), diff = lhs(xs) - rhs(xs))

c(numeric = integrate(lhs, 0, 1)$value,
  closed = 43/40 + atan(0.5)/2)
