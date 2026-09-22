seq(0, 1, by = 0.25)
rep(1:2, each = 3)
unlist(.Machine[c("double.eps", "double.xmax", "integer.max")])
c(eps = 1 + .Machine$double.eps == 1,
  half = 1 + .Machine$double.eps/2 == 1)
