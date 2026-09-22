library(numDeriv)                     # grad, hessian

DimX = 4
round(eigen(hessian(Powell, rep(0, 4)))$values, 6)
