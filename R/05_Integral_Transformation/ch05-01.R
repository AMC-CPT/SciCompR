Lap = function(f, s) integrate(function(t) exp(-s*t)*f(t), 0, Inf)$value

k0 = 10; k = 0.2
Xt = function(t) k0/k * (1 - exp(-k*t))   # solution of the infusion model

s = c(0.5, 1, 2)
cbind(s, numeric = sapply(s, function(u) Lap(Xt, u)), closed = k0/(s*(s + k)))
