SymDet = function(SymMat) {
  n = dim(SymMat)[1]; Det = SymMat[1, 1]
  if (n > 1) {
    L = SymMat
    for (i in 1:n) for (j in 1:i) {            # L and D, in place
      if (j > 1) for (k in 1:(j - 1))
        L[i, j] = L[i, j] - L[i, k] * L[j, k] * L[k, k]
      if (j < i) L[i, j] = L[i, j]/L[j, j]
    }
    for (i in 2:n) Det = Det * L[i, i]         # the product of D
  }
  return(Det)
}
c(SymDet(Ms), det(Ms))
