DerivMM = function(Am) {
  dx1 = -Ka*Am[1]
  dx2 = Ka*Am[1] - Vmax*Am[2]/(Km + Am[2]) - K12*Am[2] + K21*Am[3]
  dx3 = K12*Am[2] - K21*Am[3]
  dx4 = Vmax*Am[2]/(Km + Am[2])
  return(c(dx1, dx2, dx3, dx4))
}
