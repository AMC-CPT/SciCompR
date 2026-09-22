y  = function(x) 1 + exp(-x^2)
dy = function(x) -2*x*exp(-x^2)

x = c(0, 0.5, 1, 2, 5)
cbind(x, LHS = dy(x) + 2*x*y(x), RHS = 2*x)
