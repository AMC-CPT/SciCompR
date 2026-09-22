par(mar = c(3.4, 3.6, 0.8, 0.8), mgp = c(2.2, 0.7, 0))
plot(x, rel/(1/(12*x)), type = "l", lwd = 1.8, col = "#1F5673",
     ylim = c(0.965, 1.005), xlab = "x",
     ylab = "relative error / (1/12x)")
abline(h = 1, lty = 2, col = "#B4451F")
