library(MASS)
set.seed(8)
Data = mvrnorm(npoints, mu0, mCov0)
mu = colMeans(Data); eg = eigen(cov(Data))
alpha = atan(eg$vectors[2, 1]/eg$vectors[1, 1]); alpha*180/pi
radius = sqrt(dimR*qf(ci, dimR, npoints - npara)*eg$values); radius
c(F.based = dimR*qf(ci, dimR, npoints - npara), chisq = qchisq(ci, dimR),
  n1000 = dimR*qf(ci, dimR, 1000 - npara))
ellipRange(mu, radius, alpha)

par(mar = c(3.4, 3.6, 1.0, 0.6), mgp = c(2.2, 0.7, 0))
ellipse(mu, radius, alpha, asp = 1, lwd = 1.8)
points(Data, pch = 20, cex = 0.7, col = "grey40")
points(mu[1], mu[2], pch = 3, cex = 1.2)
ellipse(mu0, radius0, alpha0, add = TRUE, lty = 2, lwd = 1.8)
rr = ellipRange(mu, radius, alpha)
rect(rr[1, 1], rr[1, 2], rr[2, 1], rr[2, 2], border = "grey60", lty = 3)
legend("topleft", c("sample (F)", "theory (chi-square)", "ellipRange"),
       lty = c(1, 2, 3), lwd = c(1.8, 1.8, 1), col = c(1, 1, "grey60"),
       bty = "n", cex = 0.9)
