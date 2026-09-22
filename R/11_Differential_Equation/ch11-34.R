StiffEuler = function(tau, tEnd = 0.5) {
  y = c(u = 1, v = 1)
  for (i in 1:round(tEnd/tau)) {
    y = y + tau*c(998*y[1] + 1998*y[2], -999*y[1] - 1999*y[2])
  }
  return(y)
}

Exact = function(t) c(u = 4*exp(-t) - 3*exp(-1000*t),
                      v = -2*exp(-t) + 3*exp(-1000*t))

rbind(exact = Exact(0.5), tau.0.0019 = StiffEuler(0.0019),
      tau.0.0021 = StiffEuler(0.0021))
