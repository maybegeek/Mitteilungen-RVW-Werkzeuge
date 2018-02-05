MEXT  := md
SRC   := $(wildcard RVW.$(MEXT))
BIB   := ../mitteilungen-rvw-bibliografie.bib

CSL   := https://cdn.rawgit.com/maybegeek/rvw-mitteilungen-csl/master/rvw-mitteilungen.csl
# CSL   := http://www.tillheilmann.info/code/referenz-geisteswissenschaften-heilmann.csl

PDFS=$(SRC:.md=.pdf)
TEXT=$(SRC:.md=.txt)

all:	cleantxt $(TEXT)
pdf: cleanpdf $(PDFS)
txt:	cleantxt $(TEXT)

%.pdf:	%.md
	pandoc -s -f markdown+smart \
	--pdf-engine=xelatex \
	--filter pandoc-citeproc \
	--include-in-header=layout/options.tex \
	--csl=$(CSL) \
	--bibliography=$(BIB) \
-o $@ $<

%.txt:	%.md
	pandoc \
	-w plain \
	--filter pandoc-citeproc \
	--csl=$(CSL) \
	--bibliography=$(BIB) \
	-o $@ $<

cleantxt:
	rm -f *.txt

cleanpdf:
	rm -f *.pdf
