Trig = function(x) {                  # DimX 는 아무 양의 정수, 보통 10
  f  = numeric(DimX)
  cs = sum(cos(x))                    # i 에 상관없이 같은 값
  for (i in 1:DimX) {
    f[i] = DimX - cs + i*(1 - cos(x[i])) - sin(x[i])
  }
  return(sum(f^2))
}

Valley = function(x) {
  if (x[1] > 0) {
    phi = atan(x[2]/x[1]) / (2*pi)
  } else if (x[1] < 0) {
    phi = atan(x[2]/x[1]) / (2*pi) + 0.5
  } else {
    phi = sign(x[2]) / 4              # x[1] -> 0 의 극한
  }
  f1 = 10 * (x[3] - 10*phi)
  f2 = 10 * (sqrt(x[1]^2 + x[2]^2) - 1)
  f3 = x[3]
  return(f1^2 + f2^2 + f3^2)
}

DimX = 10
t0 = rep(1/10, 10)
c(start = Trig(t0), VMmin = VMmin(t0, Trig)$value)
c(Valley(c(1, 0, 0)), Valley(c(-1, 0, 0)))
