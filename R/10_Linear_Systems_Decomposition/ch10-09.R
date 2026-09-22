Cramer = function(A, b) {
  n = ncol(A)
  x = numeric(n)
  for (j in 1:n) { Aj = A; Aj[, j] = b; x[j] = det(Aj)/det(A) }
  x
}
Cramer(A3, c(6, 6, 6))
solve(A3, c(6, 6, 6))
