fx = function(x) exp(-x/100)
ifx = function(a, b) 100*exp(-a/100) - 100*exp(-b/100)

Riemann = function(fx, a, b, n) {      # 오른쪽 끝점을 표본점으로 쓴다
  dx = (b - a)/n
  dx * sum(fx(a + dx*(1:n)))
}

ns = 10^(1:5)
rs = sapply(ns, function(k) Riemann(fx, 0, 24, k))
cbind(n = ns, Riemann = rs, error = rs - ifx(0, 24))
