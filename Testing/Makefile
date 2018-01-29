MEXT  := md
SRC   := $(wildcard RVW.$(MEXT))
BIB   := ../mitteilungen-rvw-bibliografie.bib
CSL   := rvw-mitteilungen.csl
# CSL   := referenz-geisteswissenschaften-heilmann.csl

PDFS=$(SRC:.md=.pdf)
# HTML=$(SRC:.md=.html)
# TEX=$(SRC:.md=.tex)
# ODTS=$(SRC:.md=.odt)
TEXT=$(SRC:.md=.txt)

# all:	$(HTML) $(ODTS) $(TEXT)
all:	$(TEXT)

pdf: clean $(PDFS)
# html:	clean $(HTML)
# tex:	clean $(TEX)
# odt:	clean $(ODTS)
txt:	clean $(TEXT)

# %.html:	%.md
# 	pandoc -w html5 -s \
# 	--filter pandoc-citeproc \
# 	--csl=$(CSL) \
# 	--bibliography=$(BIB) \
# 	-o Test-$@ $<
#
# %.tex:	%.md
# 	pandoc -s \
# 	-w latex \
# 	--pdf-engine=xelatex \
# 	--filter pandoc-citeproc \
# 	--csl=$(CSL) \
# 	--bibliography=$(BIB) \
# 	-o Test-$@ $<
#
# %.odt:	%.md
# 	pandoc \
# 	--filter pandoc-citeproc \
# 	--csl=$(CSL) \
# 	--bibliography=$(BIB) \
# 	-o Test-$@ $<

%.pdf:	%.md
	pandoc -s -f markdown-smart \
	--pdf-engine=xelatex \
	--filter pandoc-citeproc \
	--number-sections \
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


clean:
	rm -f *.txt *.pdf
	# rm -f *.html *.tex *.odt *.txt
