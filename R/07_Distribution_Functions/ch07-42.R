n = 14; th = 0.3; y = 0:4
cbind(y, byHand = choose(n, y) * th^y * (1 - th)^(n - y),
      dbinom = dbinom(y, n, th), Dbinom = sapply(y, Dbinom, n = n, pe = th))
