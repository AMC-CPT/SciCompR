par(mar = c(0.2, 0.2, 0.2, 0.2))
plot(NA, xlim = c(-1082, -1010), ylim = c(-2.6, 1.5), axes = FALSE,
     xlab = "", ylab = "")
rect(c(-1074, -1022), 0.1, c(-1022, -1012), 0.8, border = NA,
     col = c("grey88", "grey65"))
segments(-1079, 0.45, -1074, 0.45, lty = 3, col = "grey50")
text(-1082, 0.45, "0", adj = 0)
text(c(-1048, -1017), 0.45, c("subnormal", "normal"))
segments(c(-1074, -1022), 0.1, c(-1074, -1022), -0.25, col = "grey40")
text(-1074, -0.8, expression(2^-1074)); text(-1022, -0.8, expression(2^-1022))
points(-1023, -1.6, pch = 17)
segments(-1023, -1.4, -1023, 0.05, lty = 3, col = "grey50")
text(-1035, -2.2, expression(paste("Bin2Dec returns ", 2^-1023)), cex = 0.9)
