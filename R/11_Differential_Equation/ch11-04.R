ExpmSeries = function(M, n = 40) {
  S = diag(nrow(M))
  Term = diag(nrow(M))
  for (i in 1:n) {
    Term = Term %*% M / i
    S = S + Term
  }
  return(S)
}

drop(ExpmSeries(A*t) %*% x0)
