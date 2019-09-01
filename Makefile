###############################################################################
#
# 	Makefile for njuthesis
#
# 	Copyright (C) 2013-2015 Haixing Hu,
#   Department of Computer Science and Technology, Nanjing University.
#
#	Home Page of the Project: http://haixing-hu.github.io/nju-thesis/
#
###############################################################################

PACKAGE=njuthesis
SOURCES=$(PACKAGE).dtx $(PACKAGE).ins
CLS=$(PACKAGE).cls $(PACKAGE).cfg dtx-style.sty
SAMPLE=sample
SAMPLECONTENTS=$(SAMPLE).tex
SAMPLEBIB=$(SAMPLE).bib
INSTITUTE_LOGO=njulogo.pdf
INSTITUTE_NAME=njuname.pdf

.PHONY: all clean cls doc sample

all: cls doc sample

###### generate cls/cfg
cls:  $(CLS)

$(CLS): $(SOURCES)
	xelatex $(PACKAGE).ins

###### generate doc

doc: $(PACKAGE).pdf

$(PACKAGE).pdf: $(CLS)
	xelatex $(PACKAGE).dtx
	makeindex -s gind.ist -o $(PACKAGE).ind $(PACKAGE).idx
	xelatex $(PACKAGE).dtx
	xelatex $(PACKAGE).dtx

###### for sample

sample:	 $(SAMPLE).pdf

$(SAMPLE).pdf: $(CLS) $(INSTITUTE_LOGO) $(INSTITUTE_NAME) $(SAMPLE).tex $(SAMPLEBIB)
	latexmk -xelatex -synctex=1 $(SAMPLE).tex

###### clean

clean:
	latexmk -c $(SAMPLE).tex
	latexmk -c $(PACKAGE).dtx
	-@rm -f \
		*.aux \
		*.bak \
		*.bbl \
		*.blg \
		*.dvi \
		*.glo \
		*.gls \
		*.idx \
		*.ilg \
		*.ind \
		*.ist \
		*.log \
		*.out \
		*.ps \
		*.synctex \
		*.synctex.gz \
		*.thm \
		*.toc \
		*.lof \
		*.lot \
		*.loe \
		*.hd \
		*.xdv

cleanall: clean
	-@rm -f \
		$(SAMPLE).pdf \
		$(PACKAGE).pdf \
		*.cfg \
		*.cls \
		*.sty
