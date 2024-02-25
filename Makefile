.PHONY:
all: build clean

.PHONY:
build: paper.tex
	pdflatex paper.tex
	bibtex paper
	pdflatex paper.tex
	pdflatex paper.tex

.PHONY:
images: paper.pdf
	pdftoppm paper.pdf paper -png

.PHONY:
clean:
	rm -f paper.out \
		paper.log \
		paper.aux \
		paper.lof \
		paper.lot \
		paper.toc \
		paper.bbl \
		paper.blg \
		paper.dvi \
		paper.tex.bbl \
		paper.tex.blg
