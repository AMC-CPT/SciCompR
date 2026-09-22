PolyNom3 = function(x) {
  CO1 = 0.4361836; CO2 = -0.1201676; CO3 = 0.937298; CO4 = 0.33267
  TMP1 = exp(-x * x / 2) / sqrt(2 * pi)
  TMP2 = 1 / (1 + abs(x) * CO4)
  y = TMP1 * (CO1 * TMP2 + CO2 * TMP2^2 + CO3 * TMP2^3)
  if (x > 0) y = 1 - y
  return(y)
}

PolyNom5 = function(x) {
  CO = c(0.319381530, -0.356563782, 1.781477937, -1.821255978, 1.330274429)
  TMP1 = exp(-x * x / 2) / sqrt(2 * pi)
  TMP2 = 1 / (1 + abs(x) * 0.2316419)
  y = TMP1 * sum(CO * TMP2^(1:5))
  if (x > 0) y = 1 - y
  return(y)
}

format(PolyNom3(2), digits = 16)
format(PolyNom5(2), digits = 16)
format(pnorm(2), digits = 16)

xx = seq(0, 4, by = 0.01)
d3 = sapply(xx, PolyNom3) - pnorm(xx)
d5 = sapply(xx, PolyNom5) - pnorm(xx)
signif(c(max3 = max(abs(d3)), max5 = max(abs(d5))), 3)
