function (x0, func, MaxIter = 9999, Tol = 1e-04)
...
w = 0.2
CurGr = Grad(func, x0)
...
p = -B %*% CurGr
GrDot = t(p) %*% CurGr
...
StepLen = 1
  StepLen = w * StepLen
...
y = CurGr - PrevGr
p = StepLen * p
d1 = as.double(t(p) %*% y)
if (d1 > 0) {
  Tv = B %*% y
  d2 = as.double(1 + t(y) %*% Tv/d1)
  B = B + (d2 * p %*% t(p) - p %*% t(Tv) - Tv %*% t(p))/d1
  ...
