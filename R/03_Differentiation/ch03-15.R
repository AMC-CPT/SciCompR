Fe = exp; x0 = 1; True1 = exp(1)

for (h in 10^-(2:12)) {
  Fwd = (Fe(x0 + h) - Fe(x0))/h
  Cen = (Fe(x0 + h) - Fe(x0 - h))/(2*h)
  cat(sprintf("h = %6.0e   forward %9.2e   central %9.2e\n",
              h, abs(Fwd - True1), abs(Cen - True1)))
}

u = .Machine$double.eps/2                # 단위 반올림
c(u = u, forward = sqrt(u), central = u^(1/3))
