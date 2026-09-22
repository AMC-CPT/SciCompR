Rnorm = function(n, mu = 0, sigma = 1) {
  Res = vector(length = n + 1)
  i = 1
  while (i <= n) {
    v = 2*runif(2) - 1
    w = sum(v*v)
    if (w < 1) {                      # inside the unit circle
      y = sqrt(-2*log(w)/w)
      Res[i:(i + 1)] = mu + sigma*y*v
      i = i + 2
    }
  }
  return(Res[1:n])
}

set.seed(8)
z = Rnorm(1e5)
c(mean = mean(z), sd = sd(z), q975 = unname(quantile(z, 0.975)))

set.seed(8)                           # how often does the square hit?
w = rowSums(matrix(2*runif(2e5) - 1, ncol = 2)^2)
c(accepted = mean(w < 1), theory = pi/4, pi.hat = 4*mean(w < 1))
