---
title: Bibliografie der Beiträge der Mitteilungen des RVW | Mitteilungen des RVW – Hinweise und Werkzeuge
author-meta: Christoph Pfeiffer
keywords: Bibliografie der Beiträge der Mitteilungen des RVW, RVW
description-meta: Bibliografie der Beiträge der Mitteilungen des RVW
lang: de-DE
bibliography: Mitteilungen-RVW-Bibliografie.yaml
csl: Mitteilungen-RVW.csl
nocite: |
  @*
reference-links: true
link-citations: true
link-bibliography: true
css: layout/css/style.css
page-slug: biblio-mitteilungen
rvw-back: true
---

[//]: # (
   pandoc Mitteilungen-RVW-Bibliografie.md -f markdown -t html5 -C -s -o Mitteilungen-RVW-Bibliografie.htm --template=web-template.tmpl --shift-heading-level-by=1 --metadata date="`date +'%e. %B %Y'`" --metadata date-meta="`date +'%Y-%m-%d'`"
   pandoc Mitteilungen-RVW-Bibliografie.bib -f biblatex -t markdown-smart -s > Mitteilungen-RVW-Bibliografie.yaml
  )

# Bibliografie der Beiträge der Mitteilungen des RVW

In der `*.yaml`-Datei sind die bisherigen Einzelbeiträge aus den Mitteilungen des RVW sowie das jeweilige Heft verzeichnet. Via `pandoc` und dem Zitationsstil (`Mitteilungen-RVW.csl`) werden hier unter *Bibliografie* die bibliografischen Details ausgegeben.

* __Heft 1__ / _Schwerpunkt: ALTERnativ werben_ [das ganze Heft betreffend, siehe @rvw:1].
* __Heft 2__ / _Schwerpunkt: Werbung und Medizin_ [das ganze Heft betreffend, siehe @rvw:2].
* __Heft 3__ / _Schwerpunkt: Risiko! Wie sicher ist die Werbung mit der Sicherheit?_ [das ganze Heft betreffend, siehe @rvw:3].
* __Heft 4__ / _Jubiläumsausgabe 10 Jahre RVW ... und andere Beiträge über Werbung und Werbung nach der Werbung_ [das ganze Heft betreffend, siehe @rvw:4].
* __Heft 5__ / _Schwerpunkt: Aufgetischt! Persuasion und Information bei der Vermarktung von Nahrungs- und Genussmitteln_ [das ganze Heft betreffend, siehe @rvw:5].
* __Heft 6__ / _Schwerpunkt: Out of Line. Zur Theorie und Geschichte ungewöhnlicher Werbemittel_ [das ganze Heft betreffend, siehe @rvw:6].
* __Heft 7__ / _Schwerpunkt: Autonomes Fahren im Visier der Werbung_ [das ganze Heft betreffend, siehe @rvw:7].
* __Heft 8__ / _Corona, Wein und Badeschaum_ [das ganze Heft betreffend, siehe @rvw:8].


:::{#refs}

# Bibliografie der Beiträge

:::

Auf die Zugriffsinformation wurde bei Angabe der jeweiligen Quellen verzichtet, da `URL` und `DOI` lediglich des schnelleren Zugangs wegen mit ausgegeben werden.
