
BLATT=blatt3

doc: ${BLATT}.pdf

${BLATT}.dvi: ${BLATT}.tex zusatz-T10000n1000.tex
	latex ${BLATT}
	bibtex ${BLATT} || true
	latex $^
	latex $^
${BLATT}.ps: ${BLATT}.dvi
	dvips $^

${BLATT}.pdf: ${BLATT}.ps
	ps2pdf -dPDFSETTINGS=/prepress $^

zusatz-T10000n1000.tex: zusatz-T10000n1000.data
	gnuplot zusatz.gplot
clean:
	rm -f *.log *.aux *.toc *.pdf *.nav *.out *.snm *.bbl *.blg *.dvi *.ps zusatz-*.tex *.eps
