N = 50                        # number of samples
tau = 1                       # sampling interval
t = 0:(N - 1) * tau

Draw = function(y, main, lim) {   # plot real and imaginary parts
  yt = sft(y)
  plot(t/N, yt[,1], type = "l", lty = 1, ylim = lim, xlab = "Frequency",
       ylab = "Fourier transform", main = main)
  lines(t/N, yt[,2], lty = 2)
  invisible(yt)
}

par(mfrow = c(2, 2), mar = c(4, 4, 2.4, 1))
Draw(sin(2*pi*t*0.2 + 0),    "(1) f = 0.2, phase = 0",    c(-30, 30))
Draw(sin(2*pi*t*0.2 + pi/2), "(2) f = 0.2, phase = pi/2", c(-30, 30))
yt3 = Draw(sin(2*pi*t*0.2123), "(3) f = 0.2123, phase = 0", c(-20, 20))
plot(t/N, yt3[,3], type = "l", log = "y", ylim = c(0.1, 1000),
     xlab = "Frequency", ylab = "Power", main = "(4) power of (3)")
