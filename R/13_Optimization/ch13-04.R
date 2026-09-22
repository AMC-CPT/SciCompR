library(mathr)                        # VMmin, Optim0, GenD, GetP

x0 = InitRosen(10)
x0
Rosenbrock(x0)
r = VMmin(x0, Rosenbrock)
c(value = r$value, max.dev = max(abs(r$par - 1)))
