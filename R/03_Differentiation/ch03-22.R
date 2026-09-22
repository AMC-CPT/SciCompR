Fvec = function(x) c(x[1]^2 + x[2], sin(x[1]*x[2]), exp(x[1] - x[2]))
jacobian(Fvec, c(1, 2))                  # 3 x 2 행렬

Fsca = function(x) x[1]^3 + 2*x[2]^3 + x[1]*x[2] + sin(x[1]) + cos(x[2])
hessian(Fsca, c(2, 3))
