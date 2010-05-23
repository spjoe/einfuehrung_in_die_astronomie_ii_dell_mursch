setEPS()
postscript(file='hfedichte.eps')
d <- read.table('hfe')
plot(density(d$V1),main="Häufigkeitsverteilung des Fe/H Verhältnis",xlab="log(Fe/H)")

postscript(file='hfehisto.eps')
hist(d$V1,main="Histogramm von Fe/H",ylab="Anzahl", xlab="log(Fe/H)")

