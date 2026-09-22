Deriv = function(State) {
  nDim = length(State) / 2
  r = State[1:nDim]
  v = State[(nDim + 1):(2*nDim)]
  a = -GM/(sqrt(sum(r*r)))^3 * r
  return(c(v, a))
}
