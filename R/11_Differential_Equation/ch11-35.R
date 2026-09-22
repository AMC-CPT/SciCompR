par(mfrow = c(1, 2), mar = c(3.4, 3.4, 1.6, 0.6), mgp = c(2.1, 0.7, 0))

tt = seq(0, 0.05, by = 0.0001)
matplot(tt, cbind(4*exp(-tt) - 3*exp(-1000*tt),
                  -2*exp(-tt) + 3*exp(-1000*tt)),
        type = "l", lty = 1:2, col = 1, xlab = "t", ylab = "u, v",
        main = "Exact")
legend("right", c("u", "v"), lty = 1:2, bty = "n")

tau0 = 0.0021; n = 40
Y = matrix(nrow = n, ncol = 2); Y[1, ] = c(1, 1)
for (i in 1:(n - 1)) {
  Y[i + 1, ] = Y[i, ] + tau0*c(998*Y[i, 1] + 1998*Y[i, 2],
                               -999*Y[i, 1] - 1999*Y[i, 2])
}
matplot((0:(n - 1))*tau0, Y, type = "l", lty = 1:2, col = 1,
        xlab = "t", ylab = "u, v", main = "Euler, tau = 0.0021")
