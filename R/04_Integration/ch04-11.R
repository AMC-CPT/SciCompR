Fx2 = function(x) 3 * (sin(x) - x * cos(x)) - (x * log(x) - x)
exact2 = Fx2(2.6) - Fx2(0.8)

ns = 6 * 2^(0:5)
et = abs(sapply(ns, function(k) trapez1(fx2, 0.8, 2.6, k)) - exact2)
es = abs(sapply(ns, function(k) simps13(fx2, 0.8, 2.6, k)) - exact2)
cbind(n = ns, trapez = et, ratio_t = c(NA, head(et, -1)/tail(et, -1)),
      simps = es, ratio_s = c(NA, head(es, -1)/tail(es, -1)))
