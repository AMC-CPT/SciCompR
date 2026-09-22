Xs = 7; Ns2 = 20
Th = Xs/Ns2
SeTh = sqrt(Th*(1 - Th)/Ns2)           # sqrt of the inverse information
round(c(theta.hat = Th, se = SeTh), 4)
round(Th + c(-1, 1)*qnorm(0.975)*SeTh, 4)
round(as.numeric(binom.test(Xs, Ns2)$conf.int), 4)
