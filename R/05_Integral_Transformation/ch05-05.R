for (fr in c(0.2, 0.2123)) {
  yt = sft(sin(2*pi*t*fr))
  kk = which.max(yt[,3])
  cat(sprintf("f=%6.4f  peak bin %.2f  peak/total power = %.3f\n",
              fr, (kk - 1)/N, yt[kk,3]/sum(yt[,3])))
}
