mod.x = function(x) x - fdy(x)*fd2y(x)/(fd2y(x)^2 - fdy(x)*fd3y(x))

x = y = 0.3
for (i in 1:5) {
  x = x - 2*fdy(x)/fd2y(x)        # 중복도를 아는 경우
  y = mod.x(y)                    # 모르는 경우
  cat(sprintf("%d  %10.3e  %10.3e\n", i, x, y))
}
