Res = residuals(Fit)
par(mfrow = c(1, 2), mar = c(3.4, 3.7, 1.5, 0.6), mgp = c(2.3, 0.7, 0))
plot(fitted(Fit), Res, xlab = "fitted", ylab = "residual", pch = 16,
     cex = 0.8, main = "residual vs fitted")
abline(h = 0, lty = 3)
qqnorm(Res, main = "normal Q-Q", pch = 16, cex = 0.8,
       xlab = "theoretical", ylab = "sample")
qqline(Res, lty = 3)
