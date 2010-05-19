setEPS()
postscript(file='hfedichte.eps')
d <- read.table('hfe')
plot(density(d$V1),ann=FALSE)
title(main="Dichtefunktion von H/Fe")

postscript(file='hfehisto.eps')
hist(d$V1,ann=FALSE)
title(main="Histogramm von H/Fe")

