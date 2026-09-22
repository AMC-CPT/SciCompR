set.seed(13)
y = rnorm(40, mean = 10, sd = 2)

nll = function(th) -sum(dnorm(y, th[1], exp(th[2]), log = TRUE))
fit = optim(c(0, 0), nll, method = "BFGS", hessian = TRUE)

c(mu = fit$par[1], sigma = exp(fit$par[2]), conv = fit$convergence)
c(mean(y), sqrt(mean((y - mean(y))^2)))
sqrt(diag(solve(fit$hessian)))
