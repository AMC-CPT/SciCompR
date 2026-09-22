Dose = c(2, 4, 6, 8, 10, 12)
Resp = c(3.1, 5.9, 9.2, 11.8, 15.1, 17.9)
Xm = cbind(Intercept = 1, Dose = Dose)
Bh = solve(t(Xm) %*% Xm, t(Xm) %*% Resp)
drop(Bh)
coef(lm(Resp ~ Dose))            # R gets the same numbers
Rs = Resp - drop(Xm %*% Bh)
round(Rs, 4)
s2 = sum(Rs^2)/(length(Resp) - ncol(Xm))
sqrt(diag(s2 * solve(t(Xm) %*% Xm)))       # standard errors
summary(lm(Resp ~ Dose))$coefficients
