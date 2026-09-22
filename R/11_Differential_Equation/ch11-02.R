Ke = 0.2; R0 = 10; t = 4

Integrand = function(s) exp(-Ke*(t - s)) * R0
c(convolution = integrate(Integrand, 0, t)$value,
  closed.form = R0/Ke*(1 - exp(-Ke*t)))
