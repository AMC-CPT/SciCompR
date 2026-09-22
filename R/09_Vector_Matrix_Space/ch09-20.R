B = Camera(c(1.6, -1.4, 1.2))
u = c(1, 2, 3); v = c(4, 5, 6); w = c(7, 8, 9)
s1 = c(2, 1, 0); s2 = c(0, 1, 2)            # 평면 위의 두 방향
aa = c(-1.4, 4.6); bb = c(-2.2, 5.4)
par(mar = c(0.2, 0.2, 0.2, 0.2))
plot(Proj3(rbind(aa[1]*s1 + bb[1]*s2, aa[2]*s1 + bb[1]*s2,
                 aa[2]*s1 + bb[2]*s2, aa[1]*s1 + bb[2]*s2), B),
     type = "n", asp = 1, axes = FALSE, xlab = "", ylab = "")
Patch(s1, s2, aa, bb, B)
lines(Proj3(rbind(c(0, 0, 0), -u, -u + v, w), B), lty = 2, col = "grey30")
V = Proj3(rbind(u, v, w), B)
arrows(0, 0, V[1, 1], V[1, 2], length = 0.09, lwd = 2)
arrows(0, 0, V[2, 1], V[2, 2], length = 0.09, lwd = 2)
arrows(0, 0, V[3, 1], V[3, 2], length = 0.09, lwd = 2, col = "firebrick")
text(V[1, 1] - 0.1, V[1, 2] + 0.5, "u"); text(V[2, 1] - 0.1, V[2, 2] + 0.5, "v")
text(V[3, 1] - 0.4, V[3, 2] + 0.55, "w = -u + 2v", col = "firebrick")
text(Proj3(-u, B) - c(0.4, 0), "-u", col = "grey30")
points(0, 0, pch = 16, cex = 0.8)
