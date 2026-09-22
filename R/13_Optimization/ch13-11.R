MaxIter = 100
w = matrix(nrow = MaxIter + 1, ncol = 4)
w[1, ] = c(-3, -1, -3, -1)
Wood(w[1, ])
for (i in 1:MaxIter) {
  w[i + 1, ] = w[i, ] - solve(hessian(Wood, w[i, ])) %*% grad(Wood, w[i, ])
}
head(w, 5)
tail(w, 1)
