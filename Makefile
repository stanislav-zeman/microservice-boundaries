.PHONY:
all: build clean

.PHONY:
build: paper.tex
	pdflatex paper.tex

.PHONY:
images: paper.pdf
	pdftoppm paper.pdf paper -png

.PHONY:
clean:
	rm paper.log paper.aux paper.out paper.lof paper.lot paper.toc
