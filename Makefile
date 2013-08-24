###############################################################################
#
# 	Makefile for njuthesis
#
# 	Copyright (C) 2013 Haixing Hu,
#   Department of Computer Science and Technology, Nanjing University.
#
#	Home Page of the Project: https://github.com/Haixing-Hu/nju-thesis
#
###############################################################################

PACKAGE=njuthesis
SOURCES=$(PACKAGE).dtx $(PACKAGE).ins
CLS=$(PACKAGE).cls $(PACKAGE).cfg dtx-style.sty
SAMPLE=sample
SAMPLECONTENTS=$(SAMPLE).tex
BIBFILE=$(SAMPLE).bib
INSTITUTE_LOGO=njulogo.eps
INSTITUTE_NAME=njuname.eps
TEXMFLOCAL=$(shell get_texmf_dir.sh)

.PHONY: all clean cls doc sample techdoc

all: cls doc sample

###### generate cls/cfg
cls:  $(CLS)

$(CLS): $(SOURCES)
	latex $(PACKAGE).ins

###### generate doc

doc: $(PACKAGE).pdf

$(PACKAGE).pdf: $(CLS)
	xelatex $(PACKAGE).dtx
	makeindex -s gind.ist -o $(PACKAGE).ind $(PACKAGE).idx
	makeindex -s gglo.ist -o $(PACKAGE).gls $(PACKAGE).glo
	xelatex $(PACKAGE).dtx
	xelatex $(PACKAGE).dtx

###### for sample

sample:	 $(SAMPLE).pdf

$(SAMPLE).pdf: $(CLS) $(SAMPLE).tex $(SAMPLE).toc $(SAMPLE).bbl
	xelatex $(SAMPLE).tex

$(SAMPLE).toc: $(CLS) $(SAMPLE).tex
	xelatex $(SAMPLE).tex

$(SAMPLE).bbl: $(BIBFILE)
	bibtex $(SAMPLE)
	xelatex $(SAMPLE).tex

###### install

install: $(SOURCE) $(CLS) $(PACKAGE).pdf $(SAMPLE).pdf
	mkdir -p $(TEXMFLOCAL)/tex/latex/njuthesis
	cp -rvf $(SOURCES) $(CLS) $(LOGO) $(TEXMFLOCAL)/tex/latex/njuthesis/
	mkdir -p $(TEXMFLOCAL)/doc/latex/njuthesis
	cp -rvf $(PACKAGE).pdf $(SAMPLE).pdf $(TEXMFLOCAL)/doc/latex/njuthesis/
	texhash

###### clean

clean:
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
		*.thm \
		*.toc \
		*.lof \
		*.lot \
		*.loe \
		*.sty \
		*.cfg \
		*.cls \
		*.sty
