fit = lm(log(IV) ~ time)                  # log-linear IV decline
ke  = -coef(fit)[[2]]
V   = 1000/exp(coef(fit)[[1]])            # dose / back-extrapolated C(0)

Bateman = function(p, tv)                 # p = c(ka, F)
  (p[2]*1500*p[1])/(V*(p[1] - ke)) * (exp(-ke*tv) - exp(-p[1]*tv))

obj = function(p) sum((PO - Bateman(p, time))^2)
opt = Optim0(c(1, 0.7), obj)              # quasi-Newton minimiser of mathr

par(mfrow = c(1, 2), mar = c(4, 4, 2.4, 1))
plot(nIV$x, inrate*1000, type = "l", col = "grey40", xlab = "Time (hr)",
     ylab = "Input rate (mg/hr)", main = "Recovered input")
points(time, inrate[nIV$x %in% time]*1000, pch = 19)
plot(time, PO, pch = 19, xlab = "Time (hr)", ylab = "Conc (mg/L)",
     main = "Oral profile")
tp = seq(0, 5, 0.05)
lines(tp, Bateman(opt$par, tp))

round(c(ke = ke, V = V, ka = opt$par[1], F = opt$par[2]), 3)
