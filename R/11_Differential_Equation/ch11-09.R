library(wnl)

TIME0 = c(0, 1, 2, 4, 8, 12)
TIME = c(TIME0, TIME0 + 24, TIME0 + 48)
DV = rep(NA, length(TIME))
Obs = cbind(TIME, DV)
