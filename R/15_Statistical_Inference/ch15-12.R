nw    = length(w)
S2mle = mean((w - mean(w))^2)          # the MLE, dividing by n
Info  = nw/S2mle                       # I(mu)
Se    = sqrt(1/Info)

c(I.mu = Info, se = Se)
mean(w) + c(-1, 1)*qnorm(0.975)*Se     # Wald interval
