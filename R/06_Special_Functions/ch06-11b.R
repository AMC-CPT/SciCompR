iv = log2(exp(1))                     # invln2 의 참값
xv2 = c(0.5, 1, 10, 100, 700)
k = Round(xv2*iv)                     # 떼어 낸 정수부
g = xv2 - k*(22713/32768) - k*1.42860682030942e-06
k
signif(g, 4)
log(2)/2                              # |g| 가 넘지 못하는 값
