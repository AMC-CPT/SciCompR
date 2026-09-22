kel = 0.5                                  # elimination rate constant
Disp = function(u) exp(-kel*u)             # unit disposition g(t)
Rate = function(u) ifelse(u <= 3, 2, 0)    # input rate f(t), stops at 3

tt = seq(0, 10, by = 0.02)
dt = 0.5
Total = rep(0, length(tt))

par(mar = c(4, 4, 1, 1))
plot(tt, Total, type = "n", ylim = c(0, 4.4), xlab = "Time", ylab = "Amount")
for (a in seq(0, 3 - dt, by = dt)) {
  piece = ifelse(tt >= a, Rate(a)*dt*Disp(tt - a), 0)
  lines(tt, piece, col = "grey60")
  Total = Total + piece
}
Exact = ifelse(tt <= 3, (2/kel)*(1 - exp(-kel*tt)),
               (2/kel)*(exp(3*kel) - 1)*exp(-kel*tt))
lines(tt, Total, lwd = 2)
lines(tt, Exact, lty = 2, lwd = 2)
lines(tt, Rate(tt), lty = 3)
legend("topright", c("input rate", "one slice", "sum", "exact"),
       lty = c(3, 1, 1, 2), lwd = c(1, 1, 2, 2),
       col = c("black", "grey60", "black", "black"), bty = "n")
