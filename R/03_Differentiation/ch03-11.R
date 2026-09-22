x1 = -5:5
x2 = -5:5
cbind(x1, x2, attr(FxDeriv2(x1, x2), "gradient"))

Hess = attr(FxDeriv2(x1, x2), "hessian")   # 점마다 2 x 2 행렬이 하나씩
dim(Hess)
Hess[4, , ]                                # 네 번째 점, 곧 x1 = x2 = -2
