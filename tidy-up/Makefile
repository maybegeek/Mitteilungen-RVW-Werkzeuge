.PHONY : DO_SYNCLAYOUT DO_BIBLIO DO_SYNCBIBLIO DO_CSL DO_WEBSITE DO_CLEANOUTPUT DO_CLEANALL

DIR_OUTPUT     = rvw-www-staging

ifdef GITACT
DIR_OUTPUT     = docs
endif

DIR_RVWBIBLIO  = rvw-biblio
DIR_RVWCONTENT = rvw-content
DIR_RVWCSL     = rvw-csl
DIR_RVWLAYOUT  = rvw-layout

QUELL_MDS     := $(wildcard $(DIR_RVWCONTENT)/*.md)
ZIEL_WEB      := $(QUELL_MDS:$(DIR_RVWCONTENT)/%.md=$(DIR_OUTPUT)/%.html)

QUELL_BIBLIO  := $(wildcard $(DIR_RVWBIBLIO)/*.bib)
ZIEL_BIBLIO   := $(QUELL_BIBLIO:$(DIR_RVWBIBLIO)/%.bib=$(DIR_RVWBIBLIO)/%.yaml)

QUELL_CSL     := $(wildcard $(DIR_RVWCSL)/*.csl)
ZIEL_CSL      := $(QUELL_CSL:$(DIR_RVWCSL)/%.csl=$(DIR_OUTPUT)/%.csl)

all           : DO_SYNCLAYOUT DO_BIBLIO DO_SYNCBIBLIO DO_CSL DO_WEBSITE

DO_BIBLIO     : $(ZIEL_BIBLIO)
DO_CSL        : $(ZIEL_CSL)
DO_WEBSITE    : $(ZIEL_WEB)
DO_SYNCLAYOUT :
	rsync -avhzPu rvw-layout/ $(DIR_OUTPUT)/layout/ --delete
DO_SYNCBIBLIO :
	rsync -avhzPu $(QUELL_BIBLIO) $(QUELL_BIBLIO:%.bib=%.yaml) $(DIR_OUTPUT)

$(DIR_RVWBIBLIO)/%.yaml: $(DIR_RVWBIBLIO)/%.bib
	$(PANDOC_YAML)
	$(PANDOC_HUGO)

$(DIR_OUTPUT)/%.csl: $(DIR_RVWCSL)/%.csl
	rsync -avhzPu $< $(DIR_OUTPUT)/$(notdir $<)

$(DIR_OUTPUT)/%.html: $(DIR_RVWCONTENT)/%.md $(QUELL_BIBLIO) $(ZIEL_BIBLIO)
	$(PANDOC_HTML)

PANDOC_HTML   = pandoc --standalone --wrap=none --citeproc --from markdown \
	--to html5 --template=$(DIR_RVWLAYOUT)/rvw-website.tmpl \
	--shift-heading-level-by=1 --metadata date="`date +'%e. %B %Y'`" \
	--metadata date-meta="`date +'%Y-%m-%d'`" $< -o $@

PANDOC_YAML   = pandoc --standalone --from biblatex --to markdown-smart $< -o $@

PANDOC_HUGO   = pandoc --from=markdown $(DIR_RVWBIBLIO)/RVW-web.md \
	-C --biblio=$(DIR_RVWBIBLIO)/RVW-Publikationen.yaml \
	--csl=$(DIR_RVWBIBLIO)/RVW-web.csl --lua-filter=$(DIR_RVWBIBLIO)/RVW-web.lua \
	--to=html5 -o $(DIR_RVWBIBLIO)/RVW-web.htm

DO_CLEANOUTPUT :
	rm -rf $(DIR_OUTPUT)/*

DO_CLEANALL :
	rm -f $(ZIEL_BIBLIO)
	rm -rf $(DIR_OUTPUT)/*
