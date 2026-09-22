x0 = InitRosen(10)
o0 = Optim0(x0, Rosenbrock)
rv = VMmin(x0, Rosenbrock)
ob = optim(x0, Rosenbrock, method = "BFGS")
ol = optim(x0, Rosenbrock, method = "L-BFGS-B")

data.frame(
  method  = c("Optim0", "VMmin", "optim BFGS", "optim L-BFGS-B"),
  value   = signif(c(o0$value, rv$value, ob$value, ol$value), 3),
  max.dev = signif(c(max(abs(o0$par - 1)), max(abs(rv$par - 1)),
                     max(abs(ob$par - 1)), max(abs(ol$par - 1))), 3),
  fn      = c(o0$FnCount, rv$FnCount, ob$counts[1], ol$counts[1]),
  conv    = c(o0$convergence, rv$convergence, ob$convergence,
              ol$convergence))
