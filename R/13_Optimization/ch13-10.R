grad(fx, c(1, 1))
hessian(fx, c(1, 1))
as.vector(-solve(hessian(fx, c(1, 1))) %*% grad(fx, c(1, 1)))
