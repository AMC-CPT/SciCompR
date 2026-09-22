gRosen2 = function(x) c(2*(x[1] - 1) - 400*x[1]*(x[2] - x[1]^2),
                        200*(x[2] - x[1]^2))

MinPath = function(x0, kind, MaxIter = 60, Tol = 1e-8) {
  H = diag(length(x0)); x = x0; g = gRosen2(x); P = matrix(x, nrow = 1)
  for (i in 1:MaxIter) {
    if (kind == "newton") {
      x = as.vector(x - solve(hessian(Rosen2, x)) %*% g)
    } else {
      p = if (kind == "desc") -g else as.vector(-H %*% g)
      a = 1
      while (Rosen2(x + a*p) > Rosen2(x) + 1e-4*a*sum(g*p)) a = a/2
      s = a*p; y = gRosen2(x + s) - g; sy = sum(s*y)
      if (kind == "bfgs" && sy > 0) {
        Hy = as.vector(H %*% y)
        H = H + ((1 + sum(y*Hy)/sy) * s %*% t(s) -
                 s %*% t(Hy) - Hy %*% t(s)) / sy
      }
      x = x + s
    }
    g = gRosen2(x); P = rbind(P, x)
    if (max(abs(g)) < Tol) break
  }
  return(unname(P))
}

Pn = MinPath(c(-1.2, 1), "newton")
Pd = MinPath(c(-1.2, 1), "desc")
Pb = MinPath(c(-1.2, 1), "bfgs")
sapply(list(Newton = Pn, descent = Pd, BFGS = Pb), nrow) - 1
sapply(list(Newton = Pn, descent = Pd, BFGS = Pb),
       function(P) Rosen2(P[nrow(P), ]))
