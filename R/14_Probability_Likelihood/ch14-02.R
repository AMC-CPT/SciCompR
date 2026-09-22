set.seed(21)
yObs = rnorm(8, mean = 10, sd = 2)
MuGrid = seq(6, 14, length.out = 400)
Lik = sapply(MuGrid, function(m) prod(dnorm(yObs, m, 2)))
LogLik = sapply(MuGrid, function(m) sum(dnorm(yObs, m, 2, log = TRUE)))
par(mfrow = c(1, 2), mar = c(3.4, 3.9, 1.6, 0.6), mgp = c(2.4, 0.7, 0))
plot(MuGrid, Lik, type = "l", lwd = 1.9, xlab = "mu", ylab = "L(mu)",
     main = "likelihood")
abline(v = mean(yObs), lty = 2, lwd = 1.3)
plot(MuGrid, LogLik, type = "l", lwd = 1.9, xlab = "mu",
     ylab = "log L(mu)", main = "log likelihood")
abline(v = mean(yObs), lty = 2, lwd = 1.3)
