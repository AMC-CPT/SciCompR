trapez0 = function(x, y) {          # 점 목록을 받는다. 간격이 고르지 않아도 된다
  n = length(x)
  if (length(y) != n) return(NULL)
  fi = vector()
  for (i in 1:(n - 1)) {
    fi[i] = (x[i + 1] - x[i]) * (y[i] + y[i + 1]) / 2
  }
  return(sum(fi))
}

trapez1 = function(fx, a, b, n) {   # 함수와 구간과 칸 수를 받는다
  xk = seq(a, b, length.out = (n + 1))
  fk = fx(xk)
  Ar = (b - a) / n * (fk[1] / 2 + sum(fk[2:n]) + fk[n + 1] / 2)
  return(Ar)
}
