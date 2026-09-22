f1 = function(x) (x - 2)^2 + 1
optimize(f1, interval = c(-5, 5))

fr = function(x) 100*(x[2] - x[1]^2)^2 + (1 - x[1])^2
unlist(nlminb(c(-1, 1), fr)[c("objective", "convergence", "iterations")])

ob = optim(c(-1, 1), fr, method = "L-BFGS-B", lower = c(-2, -1),
           upper = c(0.5, 3))
c(ob$par, value = ob$value, conv = ob$convergence)
