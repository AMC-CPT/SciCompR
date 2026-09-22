set.seed(43)
n1 = 6; n2 = 9; sg1 = 2; sg2 = 3
V1 = apply(matrix(rnorm(20000 * n1, 0, sg1), nrow = n1), 2, var)
V2 = apply(matrix(rnorm(20000 * n2, 0, sg2), nrow = n2), 2, var)
Fs = (V1/sg1^2)/(V2/sg2^2)
pv = c(0.5, 0.9, 0.95, 0.99)
cbind(p = pv, simulated = quantile(Fs, pv), theory = qf(pv, n1 - 1, n2 - 1))
