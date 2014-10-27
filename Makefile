all: http2.pdf

%.pdf: %.tex
	pdflatex $^

.PHONY: clean

clean:
	rm -rf *.pdf
	rm -rf *.log
	rm -rf *.aux
	rm -rf *.out
