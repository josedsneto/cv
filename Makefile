# Makefile for CV compilation

DOC = cv
LATEX = pdflatex

.PHONY: all clean distclean

all: $(DOC).pdf

$(DOC).pdf: $(DOC).tex
	$(LATEX) -interaction=nonstopmode $(DOC).tex
	$(LATEX) -interaction=nonstopmode $(DOC).tex

clean:
ifeq ($(OS),Windows_NT)
	del /Q *.aux *.bbl *.bcf *.blg *.fdb_latexmk *.fls *.idx *.ilg *.ind *.lof *.lot *.nav *.out *.run.xml *.snm *.toc *.vrb *.xdv *.synctex.gz *.log *.xmpi 2>nul || exit 0
else
	rm -f *.aux *.bbl *.bcf *.blg *.fdb_latexmk *.fls *.idx *.ilg *.ind *.lof *.lot *.nav *.out *.run.xml *.snm *.toc *.vrb *.xdv *.synctex.gz *.log *.xmpi
endif

distclean: clean
ifeq ($(OS),Windows_NT)
	del /Q $(DOC).pdf 2>nul || exit 0
else
	rm -f $(DOC).pdf
endif
