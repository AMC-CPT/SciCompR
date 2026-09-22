u = 0.5
-1/u + 1/(u - 2)                # 원시함수를 그냥 대입한 값: 음수가 나온다

eps = 10^-(1:5)
left = sapply(eps, function(e) integrate(function(v) u/v^2, u - 2, -e)$value)
right = sapply(eps, function(e) integrate(function(v) u/v^2, e, u)$value)
cbind(eps = eps, left = left, right = right)
