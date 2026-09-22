Rich = function(fx, x, h = max(1e-4, 1e-4*abs(x))) {
  a = numeric(4)
  for (i in 1:4) a[i] = (fx(x + h/2^i) - fx(x - h/2^i))/(2*h/2^i)
  for (i in 1:3) for (j in 1:(4 - i))
    a[j] = (a[j+1]*4^i - a[j])/(4^i - 1)
  a[1]
}

c(central    = (exp(1 + 1e-5) - exp(1 - 1e-5))/2e-5 - exp(1),
  richardson = Rich(exp, 1) - exp(1))
