MEXT  := md
SRC   := $(wildcard Inhalt.$(MEXT))
BIB   := r-v-w.bib
CSL   := ../rvw-mitteilungen.csl

PDFS=$(SRC:.md=.pdf)
HTML=$(SRC:.md=.html)
TEX=$(SRC:.md=.tex)
ODTS=$(SRC:.md=.odt)
TEXT=$(SRC:.md=.txt)

all:	$(PDFS) $(HTML) $(TEX) $(ODTS) $(TEXT)

pdf:	clean $(PDFS)
html:	clean $(HTML)
tex:	clean $(TEX)
odt:	clean $(ODTS)
txt:	clean $(TEXT)

%.pdf:	%.md
	pandoc -s -S \
	--latex-engine=xelatex \
	--filter pandoc-citeproc \
	--no-tex-ligatures \
	--number-sections \
	--csl=$(CSL) \
	--bibliography=$(BIB) \
	-o Test-$@ $<

%.html:	%.md
	pandoc -w html5 -s -S \
	--filter pandoc-citeproc \
	--csl=$(CSL) \
	--bibliography=$(BIB) \
	-o Test-$@ $<

%.tex:	%.md
	pandoc -s -S \
	-w latex \
	--latex-engine=xelatex \
	--filter pandoc-citeproc \
	--csl=$(CSL) \
	--bibliography=$(BIB) \
	-o Test-$@ $<

%.odt:	%.md
	pandoc \
	--filter pandoc-citeproc \
	--csl=$(CSL) \
	--bibliography=$(BIB) \
	-o Test-$@ $<

%.txt:	%.md
	pandoc \
	-w plain \
	--filter pandoc-citeproc \
	--csl=$(CSL) \
	--bibliography=$(BIB) \
	-o Test-$@ $<


clean:
	rm -f *.pdf *.html *.tex *.odt *.txt
