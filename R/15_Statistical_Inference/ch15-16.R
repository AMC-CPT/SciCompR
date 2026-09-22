set.seed(11)
Xv = 1:20
Yv = 2 + 0.5*Xv + rnorm(20, 0, 1.5)

mlr(Yv, cbind(Dose = Xv))$"Model Estimates"
