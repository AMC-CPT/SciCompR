library(mathr)      # Euler, RK4

GM = 4*pi*pi

Euler = function(State, tau) {
  nDim = length(State) / 2
  r.c = State[1:nDim]
  v.c = State[(nDim + 1):(2*nDim)]
  r.n = r.c + tau * v.c
  a.c = -GM/(sqrt(sum(r.c*r.c)))^3 * r.c
  v.n = v.c + tau * a.c
  return(c(r.n, v.n))
}
