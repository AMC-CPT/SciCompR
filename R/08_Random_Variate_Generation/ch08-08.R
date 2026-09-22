set.seed(8)
xg = seq(0, 1, length.out = 400)
cc = dbeta(1/6, 2, 5)                 # max of the Beta(2, 5) density
par(mar = c(3.4, 3.4, 1.6, 0.8), mgp = c(2.1, 0.7, 0))
plot(xg, cc*dunif(xg), type = "l", lwd = 1.8, lty = 2, ylim = c(0, cc*1.05),
     xlab = "x", ylab = "density",
     main = "target f = Beta(2, 5), proposal g = U(0, 1)")
lines(xg, dbeta(xg, 2, 5), lwd = 2)

px = runif(400); py = cc*runif(400)
ok = py <= dbeta(px, 2, 5)
points(px[ok], py[ok], pch = 20, cex = 0.7)
points(px[!ok], py[!ok], pch = 4, cex = 0.6, col = "grey55")
legend("topright", c("c g(x)", "f(x)", "accept", "reject"), bg = "white",
       lty = c(2, 1, NA, NA), lwd = c(1.8, 2, NA, NA), pch = c(NA, NA, 20, 4),
       col = c(1, 1, 1, "grey55"), box.col = "white")
c(accepted = mean(ok), theory = 1/cc)
