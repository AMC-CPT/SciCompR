set.seed(77)
MuG2 = seq(8.2, 11.8, length.out = 400)
Rel = function(k) {
  v = rnorm(k, mean = 10, sd = 2)
  ll = sapply(MuG2, function(m) sum(dnorm(v, m, 2, log = TRUE)))
  ll - max(ll)
}
par(mar = c(3.4, 3.9, 0.8, 0.6), mgp = c(2.4, 0.7, 0))
plot(MuG2, Rel(5), type = "l", lwd = 1.9, ylim = c(-10, 0), xlab = "mu",
     ylab = "log L(mu) - max", main = "")
lines(MuG2, Rel(20), lwd = 1.9, lty = 2)
lines(MuG2, Rel(80), lwd = 1.9, lty = 3)
abline(h = -1.92, col = "grey45")
legend("bottom", c("n = 5", "n = 20", "n = 80"), lty = 1:3, lwd = 1.9,
       bty = "n", horiz = TRUE)
