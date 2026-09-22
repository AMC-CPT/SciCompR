B2 = Camera(c(0.80, 0.57, 0.19))
r1 = c(1, 0, 2); r2 = c(0, 1, 2); nv = c(2, 2, -1)
s1 = c(1, 0, 2); s2 = c(1, -1, 0)           # 행공간 위의 두 방향
aa = c(-1.5, 1.9); bb = c(-2.2, 2.2)
par(mar = c(0.2, 0.2, 0.2, 0.2))
plot(Proj3(rbind(aa[1]*s1 + bb[1]*s2, aa[2]*s1 + bb[1]*s2,
                 aa[2]*s1 + bb[2]*s2, aa[1]*s1 + bb[2]*s2,
                 1.5*nv, -1.5*nv), B2),
     type = "n", asp = 1, axes = FALSE, xlab = "", ylab = "")
lines(Proj3(rbind(c(0, 0, 0), -1.5*nv), B2), lty = 2, col = "rosybrown")
Patch(s1, s2, aa, bb, B2)                   # 평면이 뒤쪽 절반을 가린다
V = Proj3(rbind(r1, r2, nv, 1.5*nv), B2)
arrows(0, 0, V[1, 1], V[1, 2], length = 0.09, lwd = 2)
arrows(0, 0, V[2, 1], V[2, 2], length = 0.09, lwd = 2)
lines(Proj3(rbind(nv, 1.5*nv), B2), lty = 2, col = "firebrick")
arrows(0, 0, V[3, 1], V[3, 2], length = 0.09, lwd = 2, col = "firebrick")
text(V[1, 1] + 0.3, V[1, 2] - 0.15, "row 1", adj = 0)
text(V[2, 1] - 0.1, V[2, 2] + 0.4, "row 2")
text(V[4, 1] + 0.25, V[4, 2], "null space", col = "firebrick", adj = 0)
text(Proj3(1.3*s1 + 1.9*s2, B2), "row space", col = "grey35")
points(0, 0, pch = 16, cex = 0.8)
