stirling = function(x) sqrt(2*pi*x)*(x/exp(1))^x

x   = 2:150
rel = abs(stirling(x) - gamma(x + 1))/gamma(x + 1)
setNames(signif(rel[x %in% c(2, 20, 150)], 3), c("x=2", "x=20", "x=150"))
