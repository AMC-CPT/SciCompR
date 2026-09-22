Cc = function(t) exp(-t) + t - 1              # closed form
Kern = function(s, t) s * exp(-(t - s))       # tau * exp(-(t - tau))

tv = c(0.5, 1, 2, 5)
Num = sapply(tv, function(u) integrate(Kern, 0, u, t = u)$value)
cbind(t = tv, numeric = Num, closed = Cc(tv))
