Start = 3; End = 1e5
RelTol = 1e-15; AbsTol = 1e-8

i  = Start:End
x1 = sapply(i, LGAMMA); x2 = lgamma(i)
c(relative = sum(abs((x1 - x2)/x2) > RelTol),
  absolute = sum(abs(x1 - x2)      > AbsTol))
