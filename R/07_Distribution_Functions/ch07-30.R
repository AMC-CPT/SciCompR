set.seed(31)
n = 12
mv = colMeans(matrix(rexp(50000 * n, rate = 1), nrow = n))
cbind(theory = c(mean = 1, var = 1/n), simulated = c(mean(mv), var(mv)))
