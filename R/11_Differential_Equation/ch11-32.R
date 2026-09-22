tau4 = tau/4
nStep4 = (EndTime - StartTime)/tau4 + 1
State3 = matrix(nrow = nStep4, ncol = (2*nDim))
State3[1, ] = c(1, 0, 0, 2*pi)
for (i in 1:(nStep4 - 1)) State3[i + 1, ] = Euler(State3[i, ], tau4)

c(Euler.tau   = max(sqrt(rowSums(State1[, 1:2]^2))),
  Euler.tau.4 = max(sqrt(rowSums(State3[, 1:2]^2))),
  RK4.tau     = max(sqrt(rowSums(State2[, 1:2]^2))))
