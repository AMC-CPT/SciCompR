par(mar = c(3.9, 4.4, 0.6, 0.6), mgp = c(2.8, 0.6, 0), las = 1)
xx = 2^seq(-20, 20, by = 1)
plot(xx, 2^(floor(log2(xx)) - 52), type = "s", log = "xy", lwd = 1.6,
     col = "grey20", xlab = "magnitude", ylab = "gap to the next double")
abline(v = 1, lty = 3, col = "grey60"); points(1, 2^-52, pch = 19)
text(2^3, 2^-56, expression(paste("at 1 the gap is  ", epsilon == 2^-52)),
     cex = 0.9, adj = 0)
arrows(2^3, 2^-55.4, 2^0.6, 2^-52.4, length = 0.05, col = "grey30")
