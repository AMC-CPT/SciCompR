par(mfrow = c(1, 2), mar = c(3.4, 3.4, 1.6, 0.8), mgp = c(2.1, 0.7, 0))
u = runifLC(1e5)
hist(u, breaks = 40, freq = FALSE, col = "grey88", border = "white",
     xlab = "u", ylab = "density", main = "runifLC(1e5)")
abline(h = 1, lwd = 1.8)

v = runifLC(2000, Seed = 1, a = 137, k = 187, m = 256)
plot(v[-length(v)], v[-1], pch = 20, cex = 0.5, xlab = "u[i]",
     ylab = "u[i+1]", main = "a = 137, k = 187, m = 256")
