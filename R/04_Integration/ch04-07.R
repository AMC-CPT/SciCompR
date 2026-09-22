a = 0; b = 24
ifx(a, b)                              # 참값

tPoints = c(0, 0.5, 1, 2, 3, 4, 6, 8, 12, 24)
trapez0(tPoints, fx(tPoints))          # 불균등 간격

xk = seq(a, b, length.out = 11)
trapez0(xk, fx(xk))                    # 같은 점 수, 균등 간격
c(n10 = trapez1(fx, a, b, 10), n100 = trapez1(fx, a, b, 100))
