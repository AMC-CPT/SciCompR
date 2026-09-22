EulerA = function(tau, tEnd = 0.3) {
  A = 0
  for (i in 1:round(tEnd/tau)) A = A + tau*(10 - 2*A)
  return(A)
}

Exact = 5*(1 - exp(-2*0.3))
Tau = c(0.1, 0.05, 0.025, 0.0125)
cbind(tau = Tau, Euler = sapply(Tau, EulerA), error = sapply(Tau, EulerA) - Exact)
