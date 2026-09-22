all.equal(dchisq(1:5, 4), dgamma(1:5, shape = 2, scale = 2))
all.equal(pchisq(1:5, 7), pgamma(1:5, shape = 3.5, scale = 2))
