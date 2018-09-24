SRC   := Gestaltungsrichtlinien-Mitteilungen-RVW.md Mitteilungen-RVW-Bibliografie.md RVW-Publikationen.md
CSL   := Mitteilungen-RVW.csl

PDFS=$(SRC:.md=.pdf)
TEXT=$(SRC:.md=.txt)

all: $(TEXT) $(PDFS)
bib: cleantxt $(TEXT) cleanpdf $(PDFS)
pdf: cleanpdf $(PDFS)
txt: cleantxt $(TEXT)

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
	--template=layout/tmpl-plain.txt \
	--csl=$(CSL) \
	-o $@ $<

cleantxt:
	rm -f $(TEXT)

cleanpdf:
	rm -f $(PDFS)
