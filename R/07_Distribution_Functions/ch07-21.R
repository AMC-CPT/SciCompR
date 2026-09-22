set.seed(13)
z2 = rnorm(2e5)^2
qv = c(0.1, 0.5, 0.9, 0.99)
cbind(p = qv, simulated = quantile(z2, qv), chisq1 = qchisq(qv, 1))
