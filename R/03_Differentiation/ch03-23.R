xObs = c(2.1, 3.4, 1.8, 2.9, 3.3)
LogL = function(th)                      # th = c(mu, sigma2)
  -length(xObs)/2*log(th[2]) - sum((xObs - th[1])^2)/(2*th[2])

n     = length(xObs)
MuHat = mean(xObs)
S2Hat = mean((xObs - MuHat)^2)
c(n = n, muHat = MuHat, s2Hat = S2Hat)

grad(LogL, c(MuHat, S2Hat))              # 최대점에서 점수함수는 0 이다
-hessian(LogL, c(MuHat, S2Hat))                    # 수치로 구한 정보량
matrix(c(n/S2Hat, 0, 0, n/(2*S2Hat^2)), nrow = 2)  # 손으로 구한 닫힌 꼴
