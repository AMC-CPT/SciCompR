r = newton(0.7, 1e-12)
e = abs(c(r[, "x"], r[nrow(r), "next"]) - 1)
e = e[e > 1e-15]                # 반올림 바닥에 닿은 값은 뺀다
cbind(e = e[-length(e)], e.next = e[-1], ratio = e[-1]/e[-length(e)]^2)
fd3y(1)/(2*fd2y(1))
