set.seed(8)
u = pexp(rexp(1e5, 0.3), 0.3)         # F(Y) should be uniform
c(mean = mean(u), sd = sd(u), true.sd = 1/sqrt(12))
c(inverse = mean(qnorm(runif(1e5)) > 1.96),
  true = pnorm(1.96, lower.tail = FALSE))
