set.seed(13)
n = 5
Sam = matrix(rnorm(n * 2e5, mean = 10, sd = 2), ncol = n)
S2 = apply(Sam, 1, var)
MleV = S2 * (n - 1)/n
c(S2 = mean(S2), mle = mean(MleV), predicted = (n - 1)/n * 4)
