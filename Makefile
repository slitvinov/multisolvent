M=main

$M.pdf: $M.tex
	pdflatex $< && pdflatex $<
clean:; rm $M.aux $M.log $M.pdf
.PHONY: clean
