par(mar = c(3.4, 3.4, 1.0, 0.6), mgp = c(2.2, 0.7, 0))
xe = seq(-3, 3, length.out = 600)
plot(xe, sapply(xe, erf), type = "l", lwd = 2, ylim = c(-1, 2),
     xlab = "x", ylab = "")
lines(xe, sapply(xe, erfc), lwd = 2, lty = 2, col = "grey40")
abline(h = c(-1, 0, 1, 2), v = 0, col = "grey80", lty = 3)
legend("topleft", bty = "n", cex = 0.85, lty = 1:2, lwd = 2,
       col = c("black", "grey40"), legend = c("erf(x)", "erfc(x)"))
