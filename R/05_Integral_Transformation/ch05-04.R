y7 = sin(2*pi*t*0.7)                 # above the Nyquist frequency 0.5
y3 = sin(2*pi*t*0.3 + pi)            # below it
c(max.diff = max(abs(y7 - y3)), peak.bin = (which.max(sft(y7)[,3]) - 1)/N)
