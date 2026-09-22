Powell = function(x) {                # DimX 는 4 의 양의 배수
  f = vector(length = DimX)
  for (i in 1:(DimX/4)) {
    f[4*i - 3] = x[4*i - 3] + 10*x[4*i - 2]
    f[4*i - 2] = sqrt(5) * (x[4*i - 1] - x[4*i])
    f[4*i - 1] = (x[4*i - 2] - 2*x[4*i - 1])^2
    f[4*i]     = sqrt(10) * (x[4*i - 3] - x[4*i])^2
  }
  return(sum(f^2))
}

InitPowell = function(n = 4) {
  DimX <<- n
  x0 = numeric(n)
  for (i in 1:(n/4)) {
    x0[4*i - 3] = 3; x0[4*i - 2] = -1; x0[4*i - 1] = 0; x0[4*i] = 1
  }
  return(x0)
}

p0 = InitPowell(4)
Powell(p0)
rp = VMmin(p0, Powell)
c(value = rp$value, max.abs = max(abs(rp$par)))
