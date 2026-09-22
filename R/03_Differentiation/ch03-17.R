hs = 10^seq(-1, -14, length.out = 400)
Ef = pmax(abs((exp(1 + hs) - exp(1))/hs - exp(1)), 1e-17)
Ec = pmax(abs((exp(1 + hs) - exp(1 - hs))/(2*hs) - exp(1)), 1e-17)

par(mar = c(3.4, 3.6, 1.0, 0.8), mgp = c(2.2, 0.7, 0))
plot(hs, Ef, log = "xy", type = "l", xlim = c(1e-1, 1e-14),
     ylim = c(1e-12, 1e-1), xlab = "h", ylab = "absolute error")
lines(hs, Ec, lwd = 2)
lines(hs, hs/2*exp(1), lty = 3, col = "grey45")       # 절단 항
lines(hs, 2*u*exp(1)/hs, lty = 3, col = "grey45")     # 반올림 항
legend("top", c("forward", "central"), lwd = c(1, 2), bty = "n",
       cex = 0.95)
