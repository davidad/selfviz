main.pdf: main.ps
	ps2pdf main.ps

main.ps: main.dvi
	dvips main.dvi

main.dvi: *.tex *.txt
	latex main

.PHONY: evince
evince: main.pdf
	evince main.pdf

.PHONY: open
open: main.pdf
	open main.pdf

.PHONY: clean
clean:
	rm -f *.aux *.log *.out *.dvi *.ps *.pdf
