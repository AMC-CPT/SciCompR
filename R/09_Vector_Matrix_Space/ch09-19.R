Camera = function(eye) {         # 3차원 점을 종이로 옮기는 3 x 2 행렬
  d = eye / sqrt(sum(eye * eye))            # 보는 방향
  rt = OuterProd(c(0, 0, 1), d)             # 화면의 가로 방향
  rt = rt / sqrt(sum(rt * rt))
  up = OuterProd(d, rt)                     # 세로 방향도 벡터곱이다
  cbind(rt, up)
}
Proj3 = function(M, B) matrix(M, ncol = 3) %*% B

Patch = function(s1, s2, aa, bb, B) {       # 평면 조각과 그 위의 격자
  Cn = rbind(aa[1]*s1 + bb[1]*s2, aa[2]*s1 + bb[1]*s2,
             aa[2]*s1 + bb[2]*s2, aa[1]*s1 + bb[2]*s2)
  polygon(Proj3(Cn, B), col = "grey94", border = "grey60")
  for (a in seq(aa[1], aa[2], by = 1))
    lines(Proj3(rbind(a*s1 + bb[1]*s2, a*s1 + bb[2]*s2), B), col = "grey83")
  for (b in seq(bb[1], bb[2], by = 1))
    lines(Proj3(rbind(aa[1]*s1 + b*s2, aa[2]*s1 + b*s2), B), col = "grey83")
  invisible(Proj3(Cn, B))
}
round(Camera(c(1.6, -1.4, 1.2)), 3)
