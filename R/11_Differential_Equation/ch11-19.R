XF3 = nComp(Sol3, Ka = 1, DATF)

par(mar = c(3.6, 3.6, 1.0, 0.6), mgp = c(2.2, 0.7, 0))
matplot(DATF[, "TIME"], XF3, type = "l", lty = 1:4, col = 1,
        xlab = "Time (h)", ylab = "Amount (mg)")
legend("topleft", c("GI", "Central", "Periph 1", "Periph 2"), lty = 1:4,
       bty = "n")
