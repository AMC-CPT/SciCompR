Time = seq(StartTime, EndTime, by = tau); nStep = length(Time)

State = matrix(nrow = nStep, ncol = nDim)
State[1, ] = A0

for (i in 1:(nStep - 1)) State[i + 1, ] = RK4(State[i, ], tau, DerivMM)

par(mar = c(3.6, 3.6, 1.0, 0.6), mgp = c(2.2, 0.7, 0))
matplot(Time, State, type = "l", lty = 1:4, col = 1,
        xlab = "Time (h)", ylab = "Amount")
legend("right", c("Depot", "Central", "Peripheral", "Out"), lty = 1:4,
       bty = "n")
