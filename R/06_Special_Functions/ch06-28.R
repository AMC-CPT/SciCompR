xb = c(0.1, 0.3, 0.5, 0.9)
cbind(x = xb, betai = sapply(xb, betai, a = 2, b = 3),
      pbeta = pbeta(xb, 2, 3))
