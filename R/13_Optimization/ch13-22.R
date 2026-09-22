ob$convergence
ob$counts
ob2 = optim(x0, Rosenbrock, method = "BFGS", control = list(maxit = 1000))
c(value = ob2$value, max.dev = max(abs(ob2$par - 1)),
  conv = ob2$convergence)
ob2$counts
