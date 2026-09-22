ChebCof = function(f, a, b, n) {          # [a, b] 에서 n 개의 계수
  k = 1:n
  y = cos(pi*(k - 0.5)/n)                 # [-1, 1] 의 체비셰프 절점
  x = 0.5*(b - a)*y + 0.5*(b + a)         # [a, b] 로 옮긴 절점
  sapply(0:(n - 1),
         function(j) 2/n * sum(sapply(x, f) * cos(pi*j*(k - 0.5)/n)))
}

ChebEval = function(cof, a, b, x) {       # 클렌쇼 되풀이
  y = (2*x - a - b)/(b - a)
  d = 0; dd = 0
  for (j in length(cof):2) {
    tmp = d
    d = 2*y*d - dd + cof[j]
    dd = tmp
  }
  y*d - dd + 0.5*cof[1]
}

Erf = function(x) 2*pnorm(x*sqrt(2)) - 1  # 기준으로 삼을 참값
cof = ChebCof(Erf, 0, 2, 12)
signif(cof, 8)
