all: experiments.pdf

%.pdf: %.tex %.bbl
	pdflatex $<
	pdflatex $<
	evince $@

%.bbl: %.tex 
	pdflatex $<
	bibtex $*

.PHONY: clean

clean:
	rm -rf *.pdf
	rm -rf *.log
	rm -rf *.aux
	rm -rf *.out
	rm -rf *.blg
