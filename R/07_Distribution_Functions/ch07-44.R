n = 14; th = 0.3; p = 0.6
k = 0:n
cbind(k, F = pbinom(k, n, th))[4:7, ]
c(qbinom = qbinom(p, n, th), Qbinom = Qbinom(p, n, th),
  smallestK = min(k[pbinom(k, n, th) >= p]))
