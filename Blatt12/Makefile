
BLATT=blatt12

doc: ${BLATT}.pdf

${BLATT}.dvi: ${BLATT}.tex aufgabe37.tex aufgabe35.tex aufgabe36.tex graph.tex
	latex ${BLATT}
	bibtex ${BLATT} || true
	latex $^
	latex $^
${BLATT}.ps: ${BLATT}.dvi
	dvips $^

${BLATT}.pdf: ${BLATT}.ps
	ps2pdf -dPDFSETTINGS=/prepress $^

graph.tex: graph.gplot
	gnuplot graph.gplot

clean:
	rm -f *.log *.aux *.toc *.pdf *.nav *.out *.snm *.bbl *.blg *.dvi *.ps graph.tex
