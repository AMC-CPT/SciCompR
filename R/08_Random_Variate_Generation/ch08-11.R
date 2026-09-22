Rbeta = function(n, alph, bet) {
  X1 = Rgamma(n, alph, 1)
  X2 = Rgamma(n, bet, 1)
  return(X1/(X1 + X2))
}

set.seed(8)
b = Rbeta(1e5, 2, 5)
rbind(sample = c(mean(b), var(b)),
      true = c(2/7, 2*5/(7^2*(2 + 5 + 1))))
