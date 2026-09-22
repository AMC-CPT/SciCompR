mlr = function(y, x.raw, standardize = 0) {
  x.mat = as.matrix(x.raw)
  if (length(y) != nrow(x.mat)) {
    message("Numbers of rows of x and y differ."); return(NULL)
  }
  n = length(y)
  xname = colnames(x.mat)
  if (is.null(xname)) xname = paste0("x", seq_len(ncol(x.mat)))
  namelist = c("Intercept", xname)
  x.avg = matrix(rep(colMeans(x.mat), n), nrow = n, byrow = TRUE)
  if (standardize == 3) {
    x.sd = matrix(rep(apply(x.mat, 2, sd), n), nrow = n, byrow = TRUE)
    x = (x.mat - x.avg)/x.sd
  } else if (standardize == 2) { x = x.mat/x.avg
  } else if (standardize == 1) { x = x.mat - x.avg
  } else { x = x.mat }
  Intercept = 1; x = as.matrix(cbind(Intercept, x))
  b = solve(t(x) %*% x) %*% t(x) %*% y; p = length(b)
  y.hat = x %*% b; e = y - y.hat; SSE = sum(e^2); MSE = SSE/(n - p)
  b.se = sqrt(diag(as.numeric(MSE) * solve(t(x) %*% x)))
  b.t = b/b.se; b.p = pt(b.t, n - p)
  for (i in 1:p) if (b.p[i] > 0.5) b.p[i] = 1 - b.p[i]
  b.p = 2 * b.p
  res1 = data.frame(namelist, cbind(b, b.se, b.t, b.p))
  names(res1) = c("Variable", "Estimate", "SE", "T", "p-value")
  h = as.matrix(diag(x %*% solve(t(x) %*% x) %*% t(x)))     # hat matrix
  MSEi = ((n - p) * MSE - e^2/(1 - h))/(n - p - 1)
  sdr = e/sqrt(MSEi * (1 - h))
  DFFITS = sqrt(h/(1 - h)) * e/sqrt(MSEi * (1 - h))
  D = e^2/(1 - h)^2 * h/(p * MSE)
  res2 = data.frame(cbind(e, sdr, h, D, DFFITS))
  names(res2) = c("Residual", "R-Student", "hat", "Cook's D", "DFFITS")
  result = list(res1, res2)
  names(result) = c("Model Estimates", "Influence Diagnostics")
  result
}
