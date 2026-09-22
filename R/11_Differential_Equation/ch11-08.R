Ke = 0.15; Ka = 0.9
tt = seq(0, 30, by = 0.05)
Bolus = 100*exp(-Ke*tt)
Rin = 100/3                                     # 3시간에 걸쳐 100 mg
Infu = ifelse(tt <= 3, Rin/Ke*(1 - exp(-Ke*tt)),
              Rin/Ke*(1 - exp(-Ke*3))*exp(-Ke*(tt - 3)))
Oral = 100*Ka/(Ka - Ke)*(exp(-Ke*tt) - exp(-Ka*tt))

par(mar = c(3.6, 3.6, 1.0, 0.6), mgp = c(2.2, 0.7, 0))
matplot(tt, cbind(Bolus, Infu, Oral), type = "l", lty = 1:3, col = 1,
        xlab = "Time (h)", ylab = "Amount (mg)")
legend("topright", c("IV bolus", "IV infusion", "Oral"), lty = 1:3,
       bty = "n")
