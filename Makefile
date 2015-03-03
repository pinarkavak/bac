
PAPER = BACAssembly
#SUPP = supp

TEX = $(wildcard ./*.tex) 

.PHONY: all, clean
all: $(TEX) $(FIGS) 
	pdflatex $(PAPER) 
	bibtex $(PAPER)
	bibtex $(PAPER)
	pdflatex $(PAPER)
	pdflatex $(PAPER)
#	pdflatex $(SUPP)
#	pdflatex $(SUPP)
clean:
	rm -rf *.dvi *.log *.aux *.bbl *.blg *.pdf

