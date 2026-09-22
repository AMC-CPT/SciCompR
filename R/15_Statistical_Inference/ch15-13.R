Ratio = function(k) qt(0.975, k - 1)/qnorm(0.975)*sqrt(k/(k - 1))
Ns = c(10, 30, 100, 1000)
cbind(n = Ns, width.ratio = round(sapply(Ns, Ratio), 4))
