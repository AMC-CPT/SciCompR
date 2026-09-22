Xq = cbind(1, 1:5, (1:5)^2)
qq = qr(Xq); Q = qr.Q(qq); Rq = qr.R(qq)
round(Q, 4)
round(Rq, 4)
max(abs(t(Q) %*% Q - diag(3)))   # orthonormal columns
max(abs(Q %*% Rq - Xq))          # equals Xq
qq$rank
