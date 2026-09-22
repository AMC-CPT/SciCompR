for (i in 1:(nStep - 1)) State1[i + 1, ] = Euler(State1[i, ], tau)
for (i in 1:(nStep - 1)) State2[i + 1, ] = RK4(State2[i, ], tau, Deriv)

par(mfrow = c(1, 2), mar = c(3.4, 3.4, 1.6, 0.6), mgp = c(2.1, 0.7, 0))

amax = max(abs(State1[, 1:2]))                       # Euler
plot(State1[, 1:2], type = "l", xlim = c(-amax, amax),
     ylim = c(-amax, amax), xlab = "x (AU)", ylab = "y (AU)",
     main = "Euler", asp = 1)
abline(v = 0, h = 0, col = "grey70")

amax = max(abs(State2[, 1:2]))                       # RK4
plot(State2[, 1:2], type = "l", xlim = c(-amax, amax),
     ylim = c(-amax, amax), xlab = "x (AU)", ylab = "y (AU)",
     main = "RK4", asp = 1)
abline(v = 0, h = 0, col = "grey70")
