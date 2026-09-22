par(mfrow = c(1, 3), mar = c(3.3, 3.4, 1.8, 0.6), mgp = c(2.1, 0.7, 0))
k = 0:14; tv = c(0.2, 0.5, 0.8); m = 0:16; nv = c(10, 30, 100)
matplot(k, sapply(tv, function(t) dbinom(k, 14, t)), type = "b", col = 1,
        lty = 1:3, pch = 15:17, cex = 0.7, main = "Bin(14, theta)",
        xlab = "y", ylab = "p(y)", ylim = c(0, 0.35))
legend("top", bty = "n", lty = 1:3, pch = 15:17, cex = 0.85, ncol = 3,
       legend = paste0("theta = ", tv))
plot(m, dpois(m, 6), type = "h", lwd = 5, col = "grey78",
     main = "Bin(n, 6/n) -> Pois(6)", xlab = "y", ylab = "p(y)")
matpoints(m, sapply(nv, function(n) dbinom(m, n, 6/n)), col = 1,
          pch = 15:17, cex = 0.7)
legend("topright", bty = "n", pch = 15:17, cex = 0.9,
       legend = paste0("n = ", nv))
plot(stepfun(k, c(0, pbinom(k, 14, 0.3))), verticals = FALSE, pch = 20,
     cex = 0.7, main = "qbinom(0.6, 14, 0.3)", xlab = "y", ylab = "F(y)")
abline(h = 0.6, lty = 3); abline(v = qbinom(0.6, 14, 0.3), lty = 2)
