Rosenbrock = function(x) {            # 차원 DimX 를 밖에서 읽는다
  f = vector(length = DimX)
  for (i in 1:(DimX/2)) {
    f[2*i - 1] = 10 * (x[2*i] - x[2*i - 1]^2)
    f[2*i]     = 1 - x[2*i - 1]
  }
  return(sum(f^2))
}

InitRosen = function(n = 2) {
  DimX <<- n                          # Rosenbrock 이 이 값을 본다
  x0 = numeric(n + 2)
  for (i in 1:floor((n + 2)/3)) {
    x0[3*i - 2] = -1; x0[3*i - 1] = 2; x0[3*i] = 1
  }
  return(x0[1:n])
}

InitRosen(6)
