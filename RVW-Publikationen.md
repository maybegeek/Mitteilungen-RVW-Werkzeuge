---
title: Bibliografie der RVW-Mitglieder | Mitteilungen des RVW – Hinweise und Werkzeuge
author-meta: Christoph Pfeiffer
keywords: Bibliografie der RVW-Mitglieder, RVW
description-meta: Bibliografie der RVW-Mitglieder, wie auf der RVW-Website verzeichnet
lang: de-DE
bibliography: RVW-Publikationen.yaml
csl: Mitteilungen-RVW.csl
nocite: |
  @*
reference-links: true
link-citations: true
link-bibliography: true
css: layout/css/style.css
page-slug: biblio-rvw
rvw-back: true
---

[//]: # (
   pandoc RVW-Publikationen.md -f markdown -t html5 -C -s -o RVW-Publikationen.htm --template=web-template.tmpl --shift-heading-level-by=1 --metadata date="`date +'%e. %B %Y'`" --metadata date-meta="`date +'%Y-%m-%d'`"
   pandoc RVW-Publikationen.bib -f biblatex -t markdown-smart -s > RVW-Publikationen.yaml
  )

# Technimagisches ... `*.bib`, `*.md`, `*.csl` und `pandoc`

In der `*.bib`-Datei sind die Veröffentlichungen, welche auf der Website [http://werbeforschung.org](http://werbeforschung.org/publikationen/) verzeichnet sind, aufgeführt.

Als Beispiel werden die bibliographischen Angaben hier ausgegeben. Hierzu benutzt werden `pandoc`, die `*.bib`-Datei ([`RVW-Publikationen.bib`](https://github.com/maybegeek/Mitteilungen-RVW-Werkzeuge/blob/master/RVW-Publikationen.bib)), die `Markdown` formatierte Datei [`RVW-Publikationen.md`](https://github.com/maybegeek/Mitteilungen-RVW-Werkzeuge/blob/master/RVW-Publikationen.md), sowie der Zitationsstil für die Mitteilungen des RVW ([`Mitteilungen-RVW.csl`](https://github.com/maybegeek/Mitteilungen-RVW-Werkzeuge/blob/master/Mitteilungen-RVW.csl)). Die Schriftanpassung, sowie kleinere LaTeX-Anpassungen, welche über die Angaben im `yaml`-Format der Markdown-Datei hinausgehen, befinden sich im *git-repository*, dort im Verzeichnis [`layout`](https://github.com/maybegeek/Mitteilungen-RVW-Werkzeuge/tree/master/layout).

```
pandoc -s -f markdown-smart \
--pdf-engine=xelatex \
--filter pandoc-citeproc \
--include-in-header=layout/options.tex \
--csl=Mitteilungen-RVW.csl \
RVW-Publikationen.md \
-o RVW-Publikationen.pdf
```

Freilich kann das Literaturverwaltungsprogramm der eigenen Wahl verwendet werden – BibTeX-Import vorausgesetzt – und somit eine Integration in den individuell üblichen Prozess der Erstellung wissenschaftlicher Arbeiten auch erreicht werden.

Auf den Folgeseiten werden die Publikationen ausgegeben.


# Publikationen
