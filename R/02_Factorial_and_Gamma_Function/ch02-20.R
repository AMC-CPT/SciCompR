LGAMMA = function (z) {
  ...
  if (z < 0.5)  return(log(abs(pi/sin(pi*z))) - LGAMMA(1 - z))
  if (abs(z) <= 171)  return(log(abs(GAMMA(z))))
  else if (abs(z) > 1e+17) return(z*(log(z) - 1))
  else {                                      # 로그 상태의 란초스 합
    lnsqrt2pi = 0.918938533204673
    ...
    return(lnsqrt2pi + (z + 0.5)*log(t) - t + log(x))
  }
}
