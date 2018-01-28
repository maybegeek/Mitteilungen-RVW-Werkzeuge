MEXT  := md
SRC   := $(wildcard RVW.$(MEXT))
BIB   := ../mitteilungen-rvw-bibliografie.bib
CSL   := rvw-mitteilungen.csl
# CSL   := referenz-geisteswissenschaften-heilmann.csl

# HTML=$(SRC:.md=.html)
# TEX=$(SRC:.md=.tex)
# ODTS=$(SRC:.md=.odt)
TEXT=$(SRC:.md=.txt)

# all:	$(HTML) $(ODTS) $(TEXT)
all:	$(TEXT)

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

%.txt:	%.md
	pandoc \
	-w plain \
	--filter pandoc-citeproc \
	--csl=$(CSL) \
	--bibliography=$(BIB) \
	-o Test-$@ $<


clean:
	rm -f *.txt
	# rm -f *.html *.tex *.odt *.txt
