Camera = function(eye) {                    # same helper as in chapter 9
  d = eye/sqrt(sum(eye * eye))
  rt = OuterProd(c(0, 0, 1), d); rt = rt/sqrt(sum(rt * rt))
  cbind(rt, OuterProd(d, rt))
}
Proj3 = function(M, B) matrix(M, ncol = 3) %*% B
Patch = function(s1, s2, aa, bb, B) {
  Cn = rbind(aa[1]*s1 + bb[1]*s2, aa[2]*s1 + bb[1]*s2,
             aa[2]*s1 + bb[2]*s2, aa[1]*s1 + bb[2]*s2)
  polygon(Proj3(Cn, B), col = "grey95", border = "grey65")
  for (a in seq(aa[1], aa[2], by = 1))
    lines(Proj3(rbind(a*s1 + bb[1]*s2, a*s1 + bb[2]*s2), B), col = "grey85")
  for (b in seq(bb[1], bb[2], by = 1))
    lines(Proj3(rbind(aa[1]*s1 + b*s2, aa[2]*s1 + b*s2), B), col = "grey85")
}
Bc = Camera(c(2.4, 0.9, 1.5))
a1 = Xa[, 1]; a2 = Xa[, 2]; aa = c(-0.8, 2.4); bb = c(-0.8, 2.8)
par(mar = c(0.2, 0.2, 0.2, 0.2))
plot(Proj3(rbind(aa[1]*a1 + bb[1]*a2, aa[2]*a1 + bb[1]*a2,
                 aa[2]*a1 + bb[2]*a2, aa[1]*a1 + bb[2]*a2, bv), Bc),
     type = "n", asp = 1, axes = FALSE, xlab = "", ylab = "")
Patch(a1, a2, aa, bb, Bc)
Vp = Proj3(rbind(a1, a2, bv, pv), Bc)
arrows(0, 0, Vp[1, 1], Vp[1, 2], length = 0.08, lwd = 2)
arrows(0, 0, Vp[2, 1], Vp[2, 2], length = 0.08, lwd = 2)
arrows(0, 0, Vp[3, 1], Vp[3, 2], length = 0.09, lwd = 2, col = "steelblue4")
arrows(0, 0, Vp[4, 1], Vp[4, 2], length = 0.09, lwd = 2.5, col = "firebrick")
lines(Proj3(rbind(bv, pv), Bc), lty = 2, col = "firebrick")
text(Vp[1, 1] + 0.1, Vp[1, 2] - 0.3, "a1"); text(Vp[2, 1] - 0.35, Vp[2, 2], "a2")
text(Vp[3, 1] + 0.25, Vp[3, 2] + 0.25, "b", col = "steelblue4")
text(Vp[4, 1] - 0.1, Vp[4, 2] + 0.4, "p", col = "firebrick")
text(mean(Vp[3:4, 1]) + 0.55, mean(Vp[3:4, 2]) - 0.1, "e", col = "firebrick")
text(Proj3(2.0 * a1 - 1.0 * a2, Bc) + c(0, -0.3), "C(A)", col = "grey40")
points(0, 0, pch = 16, cex = 0.8)
