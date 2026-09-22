GAMMA = function (z) {
  if (is.nan(z))               return(NaN)
  if (z == -Inf)               return(NaN)
  if (z > 171.61)              return(+Inf)   # 배정밀도를 넘는다
  if (z <= 0 & z == floor(z))  return(+Inf)   # 극
  if (z < 0.5)                 return(pi/(sin(pi*z) * GAMMA(1 - z)))
  if (z == floor(z) & z < 172) return(tableFactorial(z - 1))

  sqrt2pi = 2.506628274631
  p = c(676.520368121885, -1259.1392167224, 771.323428777653,
        -176.615029162141, 12.5073432786869, -0.13857109526572,
        9.98436957801957e-06, 1.50563273514931e-07)
  z = z - 1
  x = 0.99999999999981                        # c0
  for (i in 1:8) x = x + p[i]/(z + i)         # 부분분수 합
  t = z + 7.5                                 # z + g + 1/2, g = 7
  if (z > 141.2) return(sqrt2pi*exp((z + 0.5)*log(t) - t + log(x)))
  else           return(sqrt2pi*t^(z + 0.5)*exp(-t)*x)
}
