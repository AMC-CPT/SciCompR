DenS = density(S2, from = 0, n = 512)
DenM = density(MleV, from = 0, n = 512)
par(mar = c(3.4, 3.9, 0.8, 0.6), mgp = c(2.4, 0.7, 0))
plot(DenS, xlim = c(0, 14), ylim = c(0, max(DenM$y)), lwd = 1.9, main = "",
     xlab = "estimate of sigma^2", ylab = "density")
lines(DenM, lwd = 1.9, lty = 2)
abline(v = 4, lwd = 1.2)
abline(v = c(mean(S2), mean(MleV)), lty = c(1, 2), col = "grey45")
legend("topright", c("S2: divide by n-1", "MLE: divide by n"),
       lty = c(1, 2), lwd = 1.9, bty = "n")
