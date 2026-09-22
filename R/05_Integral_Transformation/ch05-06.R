y = sin(2*pi*t*0.2)
a = sft(y); b = fft(y)
c(real = max(abs(a[,1] - Re(b))), imag = max(abs(a[,2] - Im(b))))
