
BLATT=blatt10

doc: ${BLATT}.pdf

${BLATT}.dvi: ${BLATT}.tex aufgabe28.tex aufgabe29.tex aufgabe30.tex
	latex ${BLATT}
	bibtex ${BLATT} || true
	latex $^
	latex $^
${BLATT}.ps: ${BLATT}.dvi
	dvips $^

${BLATT}.pdf: ${BLATT}.ps
	ps2pdf -dPDFSETTINGS=/prepress $^

clean:
	rm -f *.log *.aux *.toc *.pdf *.nav *.out *.snm *.bbl *.blg *.dvi *.ps
