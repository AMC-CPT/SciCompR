GQuad2 = function(fx, a, b) {
  xi = 1/sqrt(3)
  xa = (b - a)/2
  xb = (a + b)/2
  xa * (fx(-xi*xa + xb) + fx(xi*xa + xb))
}

exactPoly = function(k) (1 - (-1)^(k + 1))/(k + 1)   # [-1,1] 에서 x^k 의 적분
deg = 0:4
cbind(degree = deg,
      GQuad2 = sapply(deg, function(k) GQuad2(function(x) x^k, -1, 1)),
      exact = sapply(deg, exactPoly))
