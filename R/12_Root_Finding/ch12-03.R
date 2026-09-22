next.x = function(x) x - fdy(x)/fd2y(x)

newton = function(x0, tol, max.iter = 15) {
  xi = matrix(NA, nrow = max.iter, ncol = 5,
              dimnames = list(NULL, c("i", "x", "f'", "f''", "next")))
  x = x0
  for (i in 1:max.iter) {
    xi[i, ] = c(i, x, fdy(x), fd2y(x), next.x(x))
    if (abs(x - xi[i, "next"]) < tol) return(xi[1:i, , drop = FALSE])
    x = xi[i, "next"]
  }
  warning("no convergence in ", max.iter, " iterations")
  xi
}
