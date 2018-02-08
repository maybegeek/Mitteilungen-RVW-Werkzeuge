# nützliche Werkzeuge für die Mitteilungen des RVW

In diesem Repository werden Werkzeuge für die Mitteilungen des RVW gesammelt. Für Autoren von Artikeln der Zeitschrift kann der Zitationsstil (`Mitteilungen-RVW.csl`) mit dem je eigenen Literaturverwaltungsprogramm verwendet werden, zusätzlich sind die einzelnen Beiträge der Mitteilungs-Hefte ([Mitteilungen des Regensburger Verbunds für Werbeforschung](https://epub.uni-regensburg.de/rvw.html)), wie auch die Publikationsliste der Website ([werbeforschung.org](http://www.werbeforschung.org)) als Bibliografie im Angebot.

## Mitteilungen-RVW-Bibliografie

Verzeichnis der Einzelbeiträge der Mitteilungen des Regensburger Verbunds für Werbeforschung – RVW

### `*.bib`-Datei

In der Datei `Mitteilungen-RVW-Bibliografie.bib` sind die Einzelbeiträge der einzelnen Hefte der Zeitschrift „Mitteilungen des Regensburger Verbunds für Werbeforschung – RVW“ aufgeführt (als `@article`). Zudem sind die einzelnen Hefte referenzierbar (als `@periodical`).

Auf die Verwendung des `BibTeX`/`BibLaTeX`-Feldes `crossref` wurde verzichtet, da der Import in anderen Literaturverwaltungsprogrammen (im Gegensatz zur bloßen Verwendung mit `BibTeX`/`BibLaTeX`) nicht zur gewünschten Verknüpfung führt.

In der Datei `Werbeforschung-org-Publikationen.bib` sind die Publikationen der Website des Verbunds für Werbeforschung ([http://werbeforschung.org](http://werbeforschung.org)) verzeichnet.

### Beispiele

Als Beispiele dienen die Dateien `Mitteilungen-RVW-Bibliografie.pdf` und `Werbeforschung-org-Publikationen.pdf` (sowie im „Projekt Gutenberg Plain Text Format“-formatiert `Mitteilungen-RVW-Bibliografie.txt` und `Werbeforschung-org-Publikationen.txt`), welche `pandoc` aus den Quelldateien `Mitteilungen-RVW-Bibliografie.md` und `Werbeforschung-org-Publikationen.md` unter Zuhilfenahme der bibliografischen Daten aus `Mitteilungen-RVW-Bibliografie.bib` sowie `Werbeforschung-org-Publikationen.bib` in Verbindung mit dem Zitationsstil `Mitteilungen-RVW.csl` erstellt.

Hier beispielsweise die Dateien:
* [Mitteilungen-RVW-Bibliografie.pdf](https://github.com/maybegeek/Mitteilungen-RVW-Werkzeuge/blob/master/Mitteilungen-RVW-Bibliografie.pdf)
* [Werbeforschung-org-Publikationen.pdf](https://github.com/maybegeek/Mitteilungen-RVW-Werkzeuge/blob/master/Werbeforschung-org-Publikationen.pdf)


## Zitationsstil der Mitteilungen des RVW

Oftmals steht zwischen der Fertigstellung eines Beitrags und dessen Einreichung noch die Anpassung hinsichtlich der spezifischen Anforderungen. Um ihnen bereits beim Schreiben für die [Mitteilungen](http://epub.uni-regensburg.de/rvw.html) des [Regensburger Verbund für Werbeforschung (RVW)](http://www.werbeforschung.org/) hinsichtlich des Zitationsstils behilflich zu sein bieten wir hierfür eine `csl`-Datei zur Nutzung an. Eine Vielzahl von Literaturverwaltungsprogrammen bietet die Einbindung von solchen Zitationsstilen ([*citation style language*](http://citationstyles.org/)) an.

### Installation

Für ihr Literaturverwaltungsprogramm (z.B `Zotero`) oder in Verbindung mit Konvertern wie `pandoc` benötigen sie die Datei `Mitteilungen-RVW.csl`, welche hier heruntergeladen werden kann (*clone or download*, oder als *release*).
