fq = function(x) (x - 2)^2 + 2

par(mar = c(3.2, 3.4, 0.6, 0.6), mgp = c(2.0, 0.7, 0))
plot(NA, xlim = c(-2.2, 6.2), ylim = c(0, 14), xlab = "x", ylab = "y")
rect(-1, 0, 1, 14, col = "grey92", border = NA)
rect( 3, 0, 5, 14, col = "grey92", border = NA)
abline(h = c(3, 11), col = "grey40", lty = 2)
curve(fq, -2.2, 6.2, add = TRUE, lwd = 1.6)
points(c(1, 3), c(3, 3), pch = 19)
text(c(1, 3), c(3, 3), c("(1, 3)", "(3, 3)"), pos = c(2, 4), cex = 0.9)
text(c(-2.1, -2.1), c(3, 11), c("y = 3", "y = 11"), pos = 3, cex = 0.85)
