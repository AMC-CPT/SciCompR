w[1, ] = c(0, 0, 0, 0)
for (i in 1:MaxIter) {
  w[i + 1, ] = w[i, ] - solve(hessian(Wood, w[i, ])) %*% grad(Wood, w[i, ])
}
c(value = Wood(w[101, ]), max.dev = max(abs(w[101, ] - 1)))
