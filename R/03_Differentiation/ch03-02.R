Yx  = function(x) x^exp(x)
DYx = function(x) exp(x)*x^exp(x)*log(x) + exp(x)*x^(exp(x) - 1)

x0 = log(2)
c(hand    = 2*log(2)*(log(2)*log(log(2)) + 1),
  formula = DYx(x0),
  numeric = (Yx(x0 + 1e-6) - Yx(x0 - 1e-6))/2e-6)
