tab2 = rbind(lgamma = sapply(v, lgamma), LGAMMA = sapply(v, LGAMMA))
colnames(tab2) = paste0("x=", v)
tab2

format(c(lgamma = lgamma(0.5), LGAMMA = LGAMMA(0.5),
         log.sqrt.pi = log(sqrt(pi))), digits = 22)
