head(round(mlr(Yv, cbind(Dose = Xv))$"Influence Diagnostics", 4), 4)
shapiro.test(Res)$p.value
