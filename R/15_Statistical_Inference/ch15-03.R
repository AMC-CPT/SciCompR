Ppv2 = function(prev, sn, sp) sn*prev/(sn*prev + (1 - sp)*(1 - prev))
round(c(base       = Ppv2(0.001, 0.95, 0.95),
        better.sens = Ppv2(0.001, 0.99, 0.95),
        better.spec = Ppv2(0.001, 0.95, 0.99)), 4)
