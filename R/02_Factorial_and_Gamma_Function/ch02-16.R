v   = c(0, 1, 2, 171)
tab = rbind(gamma = suppressWarnings(sapply(v, gamma)),
            GAMMA = sapply(v, GAMMA))
colnames(tab) = paste0("x=", v)
tab

format(c(gamma = gamma(0.5), GAMMA = GAMMA(0.5), sqrt.pi = sqrt(pi)),
       digits = 22)
format(c(gamma = gamma(1.5), GAMMA = GAMMA(1.5)), digits = 22)
