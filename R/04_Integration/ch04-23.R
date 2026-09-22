fx3 = function(x) exp(-x * x / 2) / sqrt(2 * pi)
exact3 = pnorm(2) - 0.5

est = c(trapez1 = trapez1(fx3, 0, 2, 12),
        simps13 = simps13(fx3, 0, 2, 12),
        simps38 = simps38(fx3, 0, 2, 12),
        romb = romb(fx3, 0, 2),
        GQuad8 = GQuad8(fx3, 0, 2),
        integrate = integrate(fx3, 0, 2)$value)
print(est, digits = 16)
signif(est - exact3, 3)
