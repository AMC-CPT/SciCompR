XF1 = Comp1(Ke = 0.1, Ka = 1, DATF)

par(mar = c(3.6, 3.6, 1.0, 0.6), mgp = c(2.2, 0.7, 0))
matplot(DATF[, "TIME"], XF1, type = "l", lty = 1:2, col = 1,
        xlab = "Time (h)", ylab = "Amount (mg)")
legend("topleft", c("GI", "Central"), lty = 1:2, bty = "n")
