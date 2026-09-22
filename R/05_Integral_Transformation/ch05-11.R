x = c(1, 1, 1, 1, 0, 0, 0, 0)        # input rate, on for four steps
g = 0.6^(0:7)                        # unit disposition

round(cbind(linear = conv(x, g), circular = Re(conv0(x, g))), 4)
