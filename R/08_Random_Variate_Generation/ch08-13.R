Rmvn = function(n, Mu, Cov) {
  cCov = chol(Cov)
  nDim = dim(Cov)[1]
  x = matrix(Rnorm(n*nDim), nrow = n, ncol = nDim)
  mMu = matrix(rep(Mu, n), nrow = n, ncol = nDim, byrow = TRUE)
  return(x %*% cCov + mMu)
}

Mu0 = c(1, 2)
Cov0 = matrix(c(2, 1, 1, 2), ncol = 2)
chol(Cov0)

set.seed(8)
Y = Rmvn(1e4, Mu0, Cov0)
colMeans(Y)
var(Y)
cor(Y)
