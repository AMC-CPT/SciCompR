zz = c(3, 5, 6, 8)
cbind(z = zz, naive = 1 - sapply(zz, erf), erfc = sapply(zz, erfc))
