sqrt.newton = function(a, tol.abs, tol.rel, max.iter = 200) {
  x = max(a, 1)
  for (i in 1:max.iter) {
    xn = (x + a/x)/2
    if (abs(xn - x) < tol.abs + tol.rel*abs(xn)) break
    x = xn
  }
  c(steps = i, rel.err = abs(xn/sqrt(a) - 1))
}

tab = t(sapply(c(2e-16, 2, 2e+16), function(a)
  c(root = sqrt(a), gap = .Machine$double.eps*sqrt(a),
    unname(sqrt.newton(a, 1e-9, 0)), unname(sqrt.newton(a, 0, 1e-9)))))
colnames(tab) = c("root", "gap", "abs.n", "abs.err", "rel.n", "rel.err")
signif(tab, 3)
