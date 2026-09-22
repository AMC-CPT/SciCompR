cat(deparse(Pbinom), sep = "\n")
k = 3; n = 14; th = 0.3
c(sumOfTerms = sum(dbinom(0:k, n, th)),
  incompleteBeta = betai(n - k, k + 1, 1 - th),
  Pbinom = Pbinom(k, n, th))
