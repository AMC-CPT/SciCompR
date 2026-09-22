Wood(w[101, ])
max(abs(grad(Wood, w[101, ])))
eg = eigen(hessian(Wood, w[101, ]))
eg$values
v = eg$vectors[, 4]                   # 음의 고유값에 딸린 고유벡터
optimize(function(t) Wood(w[101, ] + t*v), c(-2, 2))$objective
