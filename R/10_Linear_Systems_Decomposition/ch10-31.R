SymSol = function(H, g) {
  n = length(g)
  if (n == 1) return(g[1]/H[1, 1])
  p = vector(length = n)
  for (i in 1:n) for (j in 1:i) {              # L and D, in place
    if (j > 1) for (k in 1:(j - 1))
      H[i, j] = H[i, j] - H[i, k] * H[j, k] * H[k, k]
    if (j < i) H[i, j] = H[i, j]/H[j, j]
  }
  p[1] = g[1]                                  # forward substitution
  for (i in 2:n) {
    p[i] = g[i]
    for (j in 1:(i - 1)) p[i] = p[i] - H[i, j] * p[j]
  }
  p[n] = p[n]/H[n, n]                          # back substitution over D
  for (i in (n - 1):1) {
    p[i] = p[i]/H[i, i]
    for (j in (i + 1):n) p[i] = p[i] - H[j, i] * p[j]
  }
  return(p)
}
gv = c(1, 0, 2, 0, 1)
SymSol(Ms, gv)
drop(solve(Ms, gv))
