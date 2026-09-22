library(numDeriv)

grad(sin, pi)                            # cos(pi) = -1
grad(sin, (0:10)*2*pi/10)                # 벡터로 주면 점마다 계산한다

Func1 = function(x) sin(10*x) - exp(-x)
xa    = 2.04
Numd  = grad(Func1, xa)
Exact = 10*cos(10*xa) + exp(-xa)
c(numeric = Numd, exact = Exact, relerr = (Numd - Exact)/Exact)
