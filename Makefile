.PHONY:
all: build clean

.PHONY:
build: paper.tex
	pdflatex paper.tex
	pdftoppm paper.pdf paper -png
	mv paper-1.png paper.png

.PHONY:
clean:
	rm paper.log paper.aux paper.out
