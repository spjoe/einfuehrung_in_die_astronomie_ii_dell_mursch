setEPS()
postscript(file='lcddichte.eps')
d <- read.table('lcd')
plot(density(d$V1),xlab="log(Solar luminosities per cubic parsec)",main="Häufigkeitsverteilung der Helligkeitsdichten im Zentrum")

postscript(file='lcdhisto.eps')
hist(d$V1,main="Histogramm der Helligkeitsdichten im Zentrum",xlab="log(Solar luminosities per cubic parsec)",ylab="Anzahl")

