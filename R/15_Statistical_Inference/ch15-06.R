par(mfrow = c(1, 2), mar = c(3.4, 3.7, 1.5, 0.6), mgp = c(2.3, 0.7, 0))
Tg = seq(-4.2, 4.2, length.out = 500)
plot(Tg, dt(Tg, 9), type = "l", lwd = 1.9, xlab = "t", ylab = "density",
     main = "null distribution t(9)")
Rt = seq(Tobs, 4.2, length.out = 120)
polygon(c(Rt, rev(Rt)), c(dt(Rt, 9), rep(0, 120)), col = "grey75",
        border = NA)
polygon(c(-Rt, rev(-Rt)), c(dt(Rt, 9), rep(0, 120)), col = "grey75",
        border = NA)
lines(Tg, dt(Tg, 9), lwd = 1.9)
abline(v = c(-1, 1)*qt(0.975, 9), lty = 2, lwd = 1.2)
abline(v = c(-1, 1)*Tobs, lwd = 1.4, col = "firebrick")
legend("topleft", c("t = 1.57", "critical 2.262"), col = c("firebrick", 1),
       lty = c(1, 2), lwd = c(1.4, 1.2), cex = 0.72, bg = "white",
       box.lty = 0)
Ng = 3:60
Dl = c(0.3, 0.5, 0.8)
Pw = sapply(Dl, function(d) sapply(Ng, function(k)
  power.t.test(n = k, delta = d, sd = 1, type = "one.sample")$power))
matplot(Ng, Pw, type = "l", lty = 1:3, lwd = 1.9, col = 1, ylim = c(0, 1),
        xlab = "n", ylab = "power", main = "power at alpha = 0.05")
abline(h = 0.8, col = "grey45")
legend("bottomright", paste("delta =", Dl), lty = 1:3, lwd = 1.9, bty = "n")
