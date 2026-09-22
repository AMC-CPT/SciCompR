u0 = uniroot(function(u) u*log(u) - 4, c(1.5, 10), tol = 1e-12)$root
u0

SA = function(t) {                       # 주어진 t 에서 s 와 a
  s = (u0 + t)/4
  c(s = s, a = (s - log(4*t^2/u0))/3)
}

h = 1e-6
(SA(2 + h) - SA(2 - h))/(2*h)            # ds/dt 와 da/dt
