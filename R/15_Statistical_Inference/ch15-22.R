set.seed(11)
X2 = 1:20
Y1 = 2 + 0.5*X2    + rnorm(20, 0, 1.5)   # genuinely linear
Y2 = 2 + 0.03*X2^2 + rnorm(20, 0, 0.4)   # curved

c(linear    = Run.test(residuals(lm(Y1 ~ X2))),
  quadratic = Run.test(residuals(lm(Y2 ~ X2))))
shapiro.test(residuals(lm(Y2 ~ X2)))$p.value   # normality is not rejected
