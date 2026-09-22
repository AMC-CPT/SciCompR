x = 0.3
for (i in 1:6) {
  xn = next.x(x)
  cat(sprintf("%d  %.10f  ratio %.4f\n", i, xn, xn/x))
  x = xn
}
