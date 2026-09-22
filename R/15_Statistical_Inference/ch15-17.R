Fit = lm(Yv ~ Xv)
round(confint(Fit), 4)
c(R2 = summary(Fit)$r.squared, adj.R2 = summary(Fit)$adj.r.squared)
