z = c(0.1, 0.5, 1, 2, 3)
c(erf  = max(abs(sapply(z, erf)  - (2*pnorm(z*sqrt(2)) - 1))),
  erfc = max(abs(sapply(z, erfc) - 2*pnorm(-z*sqrt(2)))))
