gj = function(M, verbose = TRUE) {
  n = nrow(M)
  for (k in 1:n) {
    p = which.max(abs(M[k:n, k])) + k - 1   # largest pivot at or below row k
    if (abs(M[p, k]) < 1e-12) return(NULL)  # no pivot left: singular
    if (p != k) M[c(k, p), ] = M[c(p, k), ] # operation (3): swap
    M[k, ] = M[k, ]/M[k, k]                 # operation (1): scale
    for (i in setdiff(1:n, k))
      M[i, ] = M[i, ] - M[i, k] * M[k, ]    # operation (2): sweep
    if (verbose) { cat("after column", k, "\n"); print(M) }
  }
  M
}
A = matrix(c(4, 2, 2, -1), nrow = 2, byrow = TRUE)
gj(cbind(A, b = c(10, 3)))
