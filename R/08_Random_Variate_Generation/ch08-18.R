ci = 0.95; npoints = 100; dimR = 2
npara = 5                     # two means and three entries of a 2x2 Cov
mu0 = c(0, 0)
mCov0 = matrix(c(1, 0.5, 0.5, 1), nrow = 2)

eg0 = eigen(mCov0); eg0$values
alpha0 = atan(eg0$vectors[2, 1]/eg0$vectors[1, 1]); alpha0*180/pi
radius0 = sqrt(qchisq(ci, dimR)*eg0$values); radius0
