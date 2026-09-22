u = c(1, 2, 3); v = c(100, 200, 300)
sum(u * v)                       # 방향이 같은 두 벡터의 내적

u = c(1, 2, 3); v = c(4, 5, 6)
sum(u * v)                       # 내적
acos(sum(u * v) / sqrt(sum(u * u)) / sqrt(sum(v * v)))   # 각 (radian)
