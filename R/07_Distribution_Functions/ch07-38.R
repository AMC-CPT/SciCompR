nv = c(1, 5, 8, 30)
cbind(nu = nv, t.squared = qt(0.975, nv)^2, F = qf(0.95, 1, nv))
