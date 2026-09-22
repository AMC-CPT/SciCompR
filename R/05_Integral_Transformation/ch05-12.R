Deconv = function(z, x) {
  len.z = length(z); len.x = length(x)
  if (len.z < len.x) {
    message("z must be at least as long as x")
    return()
  }
  z = c(z, rep(0, len.z))                  # pad to twice the length
  x = c(x, rep(0, 2*len.z - len.x))
  y = Re(fft(fft(z)/fft(x), TRUE)/(2*len.z))
  return(y[1:len.z])
}

z = conv(x, g)                             # response built from x and g
c(vs.package = max(abs(Deconv(z, g) - deconv(z, g))),
  vs.input   = max(abs(Deconv(z, g) - x)))
