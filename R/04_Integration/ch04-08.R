ns = 10 * 2^(0:5)
et = sapply(ns, function(k) trapez1(fx, 0, 24, k)) - ifx(0, 24)
cbind(n = ns, error = et, ratio = c(NA, head(et, -1) / tail(et, -1)))
