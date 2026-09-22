uses = function(nm, keys) {
  s = paste(deparse(get(nm)), collapse = " ")
  paste(keys[sapply(keys, grepl, x = s, fixed = TRUE)], collapse = " ")
}
fnP = c("Pnorm", "Plnorm", "Pgamma", "Pchisq", "Pbeta", "Pt", "Pf",
        "Pbinom", "Ppois")
keyP = c("erfc", "gammp", "gammq", "betai")
keyQ = c("inverfc", "invgammp", "invbetai", "Pbinom", "Ppois")
data.frame(P = fnP, P.calls = sapply(fnP, uses, keys = keyP),
           Q = sub("^P", "Q", fnP),
           Q.calls = sapply(sub("^P", "Q", fnP), uses, keys = keyQ),
           row.names = NULL)
