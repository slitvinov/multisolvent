M=main

include make/dep.mk

$M.pdf: $M.tex
	pdflatex $< && pdflatex $<
clean:; rm -f $M.aux $M.log $M.pdf
.PHONY: clean
