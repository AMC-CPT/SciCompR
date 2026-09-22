deg = 0:18
gerr = sapply(deg, function(k)
  abs(GQuad8(function(x) x^k, -1, 1) - exactPoly(k)))

par(mar = c(3.6, 4.0, 0.6, 0.6), mgp = c(2.6, 0.7, 0))
plot(deg, pmax(gerr, 1e-17), log = "y", type = "h", lwd = 4,
     xlab = "degree of the integrand", ylab = "absolute error")
abline(v = 15.5, lty = 2)
text(15.3, 1e-4, "2n - 1 = 15", pos = 2)

cbind(degree = 14:18, error = signif(gerr[15:19], 3))
