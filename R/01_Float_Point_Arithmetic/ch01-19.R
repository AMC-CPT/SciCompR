Eps = .Machine$double.eps
k = c(1, 1.5, 1.8, 1.9, 1.999999999999,
      1.9999999999999999999999, 2, 2.5, 0.5, 0.5)
which(sapply(k, function(v) 1 + Eps/v == 1))
