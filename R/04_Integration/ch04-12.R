nn = 6 * 2^(0:6)
e1 = abs(sapply(nn, function(k) trapez1(fx2, 0.8, 2.6, k)) - exact2)
e2 = abs(sapply(nn, function(k) simps13(fx2, 0.8, 2.6, k)) - exact2)

par(mar = c(3.6, 4.0, 0.6, 0.6), mgp = c(2.6, 0.7, 0))
plot(nn, e1, log = "xy", type = "b", pch = 1, ylim = range(c(e1, e2)),
     xlab = "n (number of panels)", ylab = "absolute error")
lines(nn, e2, type = "b", pch = 2, lty = 2)
legend("bottomleft", c("trapezoidal", "Simpson 1/3"), pch = c(1, 2),
       lty = c(1, 2), bty = "n")

slope = function(e) unname(coef(lm(log(e) ~ log(nn)))[2])
round(c(trapezoid = slope(e1), simpson = slope(e2)), 3)
