set.seed(1)
op = par(mfrow = c(1, 3), mar = c(3.2, 3.2, 1.6, 0.6), mgp = c(2, 0.6, 0))
tt = seq(0, 12, 0.25)
plot(tt, exp(-0.3*tt), type = "l", xlab = "time", ylab = "conc",
     main = "plot + points")
points(seq(0, 12, 2), exp(-0.3*seq(0, 12, 2)), pch = 16)
hist(rnorm(200), main = "hist", xlab = "value")
matplot(tt, cbind(exp(-0.3*tt), exp(-0.15*tt)), type = "l", lty = 1:2,
        col = 1, xlab = "time", ylab = "conc", main = "matplot")
par(op)
