Start = 1; End = 170; RelTol = 1e-13
bad = integer(0)
for (i in Start:End) {
  x1 = tableFactorial(i)
  x2 = factorial(i)
  if (abs((x1 - x2)/x2) > RelTol) bad = c(bad, i)
}
bad
