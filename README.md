Die bisherigen Hilfeseiten für Beiträge der *Mitteilungen des Regensburger Verbunds für Werbeforschung* wurden im offziellen Webangebot des RVW integriert:

[https://werbeforschung.org/tools/](https://werbeforschung.org/tools/)

Dieses Repository wird allerdings weiterhin verwendet um die bibliografischen Details der Beiträge der *Mitteilungen des RVW* aktuell zu halten, wie auch die themenspezifische Publikationsliste der Mitglieder des RVW.

In beiden Fällen als `*.bib`-Datei (BibLaTeX) und als konvertierte `*.yaml`- und `*.json`-Datei für den Import in Literaturverwaltungsprogrammen:

* [RVW-Publikationen.bib](https://maybegeek.github.io/Mitteilungen-RVW-Werkzeuge/RVW-Publikationen.bib)
* [RVW-Publikationen.yaml](https://maybegeek.github.io/Mitteilungen-RVW-Werkzeuge/RVW-Publikationen.yaml)
* [RVW-Publikationen.json](https://maybegeek.github.io/Mitteilungen-RVW-Werkzeuge/RVW-Publikationen.json)

* [biblio-mitteilungen.bib](https://maybegeek.github.io/Mitteilungen-RVW-Werkzeuge/biblio-mitteilungen.bib)
* [biblio-mitteilungen.yaml](https://maybegeek.github.io/Mitteilungen-RVW-Werkzeuge/biblio-mitteilungen.yaml)
* [biblio-mitteilungen.json](https://maybegeek.github.io/Mitteilungen-RVW-Werkzeuge/biblio-mitteilungen.json)

Zusätzlich werden die bibliografischen Daten auch per `pandoc` in `*.html`-Seiten exportiert, welche auf der RVW-Website inkorporiert werden:

* [RVW-web.htm](https://maybegeek.github.io/Mitteilungen-RVW-Werkzeuge/RVW-web.htm)
* [In RVW-Website integriert (RVW-web.htm)](https://werbeforschung.org/publikationen/)

* [RVW-alpha-web.htm](https://maybegeek.github.io/Mitteilungen-RVW-Werkzeuge/RVW-alpha-web.htm)
* [In RVW-Website integriert (RVW-alpha-web.htm)](https://werbeforschung.org/tools/bibliografie-rvw/)

* [bib-mitteilungen-web.htm](https://maybegeek.github.io/Mitteilungen-RVW-Werkzeuge/bib-mitteilungen-web.htm)
* [In RVW-Website integriert (bib-mitteilungen-web.htm)](https://werbeforschung.org/tools/bibliografie-mitteilungen/)

Der CSL-Stil für die Mitteilungen wird ebenfalls hier aktuell gehalten und zudem mit einem `*.lua`-Filter und einer angepassten CSL-Datei komplettiert für die jahresweise Gruppierung der RVW-Publikationsliste:

* [Mitteilungen-RVW.csl](https://maybegeek.github.io/Mitteilungen-RVW-Werkzeuge/Mitteilungen-RVW.csl)
* [Mitteilungen-RVW-group-by-year.csl](https://maybegeek.github.io/Mitteilungen-RVW-Werkzeuge/Mitteilungen-RVW-group-by-year.csl)
* [RVW-web.lua](https://maybegeek.github.io/Mitteilungen-RVW-Werkzeuge/RVW-web.lua)

## Vorgehensweise zur Aktualisierung

Für den CSl-Stil sind die Dateien im Ordner `/rvw-csl/` zu ändern.

Quelldokumente für die Sammlung der bibliografischen Details sind:

* `/rvw-biblio/RVW-Publikationen.bib` und
* `/rvw-biblio/biblio-mitteilungen.bib`

In einem mehrstufigen Prozess ist -- bei lokal installiertem `pandoc` (https://pandoc.org/) und in der `bash` -- nach einer Änderung `01-TESTS.sh` auszuführen um die Änderungen zu überprüfen und dann mit `02-RELEASE.sh` die geänderten Dateien in der Ordnerstruktur bereitzustellen. Hernach dann noch die Änderungen in git(hub) commiten.

Die Aktualisierung der RVW-Website geschieht im Gitlab-Repository der Universität Regensburg:

https://git.uni-regensburg.de/pfc23283/werbeforschung-org-rvw-website

Hier wird dann in der entsprechenden Datei das Datum aktualisiert und beim nächsten commit auf `main` die Testumgebung aktualisiert. Im branch `werbeforschung-org-sync` kann nach Prüfung der Testumgebung dann die Änderung von `main` übernommen werden und der nächste commit wird die Website neu generieren und die Änderungen auf den Webspace der RVW-Website übertragen.
