cnt = new.env(); cnt$n = 0                  # integrate 의 호출 횟수를 센다
fcount = function(x) { cnt$n = cnt$n + length(x); fx3(x) }
integrate(fcount, 0, 2)$value

nev = c(trapez1 = 13, simps13 = 13, simps38 = 13,
        romb = 9, GQuad8 = 8, integrate = cnt$n)
aerr = pmax(abs(est - exact3), 1e-17)

par(mar = c(3.6, 4.0, 0.6, 0.6), mgp = c(2.6, 0.7, 0))
plot(nev, aerr, log = "xy", pch = 19, xlim = c(6.5, 30),
     xlab = "function evaluations", ylab = "absolute error")
text(nev, aerr, names(nev), pos = c(4, 4, 2, 2, 4, 2), cex = 0.85)

rbind(evaluations = nev, error = signif(aerr, 3))
