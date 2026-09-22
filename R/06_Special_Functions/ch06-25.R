xv = c(0.1, 0.5, 1, 2, 5)
cbind(x = xv, gammp = sapply(xv, gammp, a = 2), pgamma = pgamma(xv, 2))
