Fw = function(x, y) x*y*(x^2 - y^2)/(x^2 + y^2)
Fx = function(x, y, h = 1e-8) (Fw(x + h, y) - Fw(x - h, y))/(2*h)
Fy = function(x, y, h = 1e-8) (Fw(x, y + h) - Fw(x, y - h))/(2*h)

d = 1e-3
c(fxy = (Fx(0, d) - Fx(0, -d))/(2*d),     # f_x 를 y 로 한 번 더
  fyx = (Fy(d, 0) - Fy(-d, 0))/(2*d))     # f_y 를 x 로 한 번 더
