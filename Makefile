DATEIEN := \
	index.md \
	Impressum.md \
	Mitteilungen-RVW-Bibliografie.md \
	RVW-Publikationen.md \
	Gestaltungsrichtlinien-Mitteilungen-des-RVW.md \
	Mitteilungen-RVW-Bibliografie.bib \
	RVW-Publikationen.bib \
	Mitteilungen-RVW-Bibliografie.yaml \
	RVW-Publikationen.yaml

MD2HTM = $(DATEIEN:.md=.htm)
BIB2YAML = $(DATEIEN:.bib=.yaml)

%.htm:	%.md
	pandoc -f markdown -t html5 -C -s --template=web-template.tmpl --shift-heading-level-by=1 --metadata date="`date +'%e. %B %Y (%H:%Mh)'`" --metadata date-meta="`date +'%Y-%m-%d'`" -o $@ $<

%.yaml:	%.bib
	pandoc -f biblatex -t markdown-smart -s -o $@ $<

all: bib web
bib: $(BIB2YAML)
web: $(MD2HTM)
