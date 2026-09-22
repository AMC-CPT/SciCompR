fx = function(x) (x[1] - 2)^4 + (x[1] - 2)^2 * x[2]^2 + (x[2] + 1)^2

MaxIter = 10
x = matrix(nrow = MaxIter + 1, ncol = 2)
x[1, ] = c(1, 1)
fx(x[1, ])
for (i in 1:MaxIter) {
  x[i + 1, ] = x[i, ] - solve(hessian(fx, x[i, ])) %*% grad(fx, x[i, ])
}
x
