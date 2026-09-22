par(mfrow = c(1, 2), mar = c(3.4, 3.4, 1.6, 0.8), mgp = c(2.1, 0.7, 0))
Mid = AgeLB + 2.5
plot(Mid, dM, type = "b", pch = 19, cex = 0.7, ylim = c(0, 1.05),
     xlab = "Age (y)", ylab = "d", main = "target density")
lines(Mid, dF, type = "b", pch = 1, cex = 0.7, lty = 2)
legend("topleft", c("male", "female"), pch = c(19, 1), lty = 1:2, bty = "n")
h = hist(Demog[Demog$Sex == "M", "Age"], breaks = seq(20, 90, 5), plot = FALSE)
plot(Mid, h$counts/max(h$counts), type = "h", lwd = 6, col = "grey75",
     ylim = c(0, 1.05), xlab = "Age (y)", ylab = "relative frequency",
     main = "simulated males (n = 1000)")
lines(Mid, dM, type = "b", pch = 19, cex = 0.7)
