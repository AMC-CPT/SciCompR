FxExpr2 = expression(x1^3 + 2*x2^3 + x1*x2 + sin(x1) + cos(x2))
FxDeriv2 = deriv(FxExpr2, c("x1", "x2"),
                 function.arg = c("x1", "x2"), func = TRUE, hessian = TRUE)

Fd2 = FxDeriv2(2, 3)
c(Fd2)                                   # 함숫값
attr(Fd2, "gradient")
attr(Fd2, "hessian")[1, , ]
