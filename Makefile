.PHONY:
all: build clean

.PHONY:
build: paper.tex
	pdflatex paper.tex

.PHONY:
clean:
	rm paper.log paper.aux paper.out
