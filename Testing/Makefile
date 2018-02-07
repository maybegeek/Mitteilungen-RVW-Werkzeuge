SRC   := $(wildcard *.md)
CSL   := https://cdn.rawgit.com/maybegeek/Mitteilungen-RVW-Werkzeuge/master/Mitteilungen-RVW.csl
# CSL   := http://www.tillheilmann.info/code/referenz-geisteswissenschaften-heilmann.csl

PDFS=$(SRC:.md=.pdf)
TEXT=$(SRC:.md=.txt)

all:	cleantxt $(TEXT)
pdf: cleanpdf $(PDFS)
txt:	cleantxt $(TEXT)

%.pdf:	%.md
	pandoc -s -f markdown-smart \
	--pdf-engine=xelatex \
	--filter pandoc-citeproc \
	--include-in-header=layout/options.tex \
	--csl=$(CSL) \
-o $@ $<

%.txt:	%.md
	pandoc \
	-w plain \
	--filter pandoc-citeproc \
	--csl=$(CSL) \
	-o $@ $<

cleantxt:
	rm -f *.txt

cleanpdf:
	rm -f *.pdf
