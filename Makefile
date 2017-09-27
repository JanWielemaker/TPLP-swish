################################################################
# SWI-Prolog `DB' package
# Author:    Jan Wielemaker. jan@swi.psy.uva.nl
# Copyright: LGPL (see COPYING or www.gnu.org
################################################################

.SUFFIXES: .tex .dvi .doc .pl

DOCTOTEX=./doc2tex
LATEX=latex
DOC=swish
PDF=$(DOC).pdf
HTML=$(DOC).html
RUNTEX=./runtex

TEX=	introduction.tex architecture.tex edu.tex extending.tex \
	cplint.tex lps.tex related.tex conclusions.tex application.tex \
	$(DOC).tex


SRC=$(TEX) swipl.sty *.bib $(DOC).bbl figs/*.png figs/*.pdf
SUP=tlp.cls acmtrans.bst README.TXT

################################################################
# Documentation
################################################################

all:		$(TEX) pdf

doc:		$(PDF) $(HTML)
pdf:		$(PDF)
xhtml:		$(TEX)
		latex2html $(DOC)

$(PDF)::
		$(RUNTEX) --pdf $(DOC)

$(TEX):		$(DOCTOTEX)

.doc.tex:
		$(DOCTOTEX) $*.doc > $*.tex

zip:
		rm -f $(DOC).zip
		zip -r $(DOC).zip $(SRC) $(SUP)

################################################################
# Clean
################################################################

clean:
		for f in $(TEXT); do \
		   if [ -f `basename $$f tex`.doc ]; then rm -f $$f; fi ;\
		done
		$(RUNTEX) --clean $(DOC)
