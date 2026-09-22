mu = 5; sig = 3; y = c(2, 5, 8, 11)
cbind(y, direct = pnorm(y, mu, sig), standardized = pnorm((y - mu)/sig))
