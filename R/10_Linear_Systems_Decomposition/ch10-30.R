SymInv = function(SymMat) {
  n = dim(SymMat)[1]; L = SymMat
  Linv = diag(1, n); RetMat = matrix(0, n, n)
  for (i in 1:n) for (j in 1:i) {              # L and D, in place
    if (j > 1) for (k in 1:(j - 1))
      L[i, j] = L[i, j] - L[i, k] * L[j, k] * L[k, k]
    if (j < i) L[i, j] = L[i, j]/L[j, j]
  }
  for (i in 2:n) for (j in (i - 1):1)          # invert L
    for (k in j:(i - 1)) Linv[i, j] = Linv[i, j] - L[i, k] * Linv[k, j]
  for (i in 1:n) for (j in 1:i) {              # t(Linv) %*% Dinv %*% Linv
    for (k in i:n)
      RetMat[i, j] = RetMat[i, j] + Linv[k, i]/L[k, k] * Linv[k, j]
    RetMat[j, i] = RetMat[i, j]
  }
  return(RetMat)
}
round(SymInv(Ms), 6)
max(abs(SymInv(Ms) - solve(Ms)))
