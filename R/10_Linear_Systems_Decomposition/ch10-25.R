Xa = cbind(c(1, 1, 1), c(0, 1, 2))
bv = c(2, 1, 6)
t(Xa) %*% Xa                     # 2 x 2 and symmetric
t(Xa) %*% bv
xls = solve(t(Xa) %*% Xa, t(Xa) %*% bv)
drop(xls)
pv = drop(Xa %*% xls)            # the projection
pv
ev = bv - pv                     # the residual
ev
drop(t(Xa) %*% ev)               # orthogonal to every column
