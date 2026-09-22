set.seed(11)
mu = 1; sig = 0.8
y = rlnorm(2e5, mu, sig)
cbind(theory = c(median = exp(mu), mean = exp(mu + sig^2/2)),
      simulated = c(median(y), mean(y)),
      quantileRule = c(qlnorm(0.5, mu, sig), NA))
