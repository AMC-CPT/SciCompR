Energy = function(S) 0.5*rowSums(S[, 3:4]^2) - GM/sqrt(rowSums(S[, 1:2]^2))

c(initial = Energy(State1)[1],
  Euler   = Energy(State1)[nStep],
  RK4     = Energy(State2)[nStep])
