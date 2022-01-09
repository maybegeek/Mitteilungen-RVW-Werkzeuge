#SRC   := Gestaltungsrichtlinien-Mitteilungen-RVW.md Mitteilungen-RVW-Bibliografie.md RVW-Publikationen.md
#CSL   := Mitteilungen-RVW.csl
WWW   := index.md Impressum.md Mitteilungen-RVW-Bibliografie.md RVW-Publikationen.md

#PDFS=$(SRC:.md=.pdf)
#TEXT=$(SRC:.md=.txt)
WEBSITE=$(WWW:.md=.htm)

#all: $(TEXT) $(PDFS)
#bib: cleantxt $(TEXT) cleanpdf $(PDFS)
#pdf: cleanpdf $(PDFS)
#txt: cleantxt $(TEXT)
htm: $(WEBSITE)

%.htm:	%.md
	pandoc -f markdown -t html5 -C -s --template=web-template.tmpl --shift-heading-level-by=1 --metadata date="`date +'%e. %B %Y'`" --metadata date-meta="`date +'%Y-%m-%d'`" -o $@ $<

cleanhtm:
	rm -f $(WEBSITE)

# %.pdf:	%.md
# 	pandoc -s -f markdown-smart \
# 	--pdf-engine=xelatex \
# 	--filter pandoc-citeproc \
# 	--include-in-header=layout/options.tex \
# 	--csl=$(CSL) \
# 	-o $@ $<
#
# %.txt:	%.md
# 	pandoc \
# 	-w plain+gutenberg \
# 	--filter pandoc-citeproc \
# 	--template=layout/tmpl-plain.txt \
# 	--csl=$(CSL) \
# 	-o $@ $<
#
# cleantxt:
# 	rm -f $(TEXT)
#
# cleanpdf:
# 	rm -f $(PDFS)
