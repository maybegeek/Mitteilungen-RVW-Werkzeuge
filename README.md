# nützliche Werkzeuge für die Mitteilungen des RVW

## Projekt-Website

[https://maybegeek.github.io/Mitteilungen-RVW-Werkzeuge/](https://maybegeek.github.io/Mitteilungen-RVW-Werkzeuge/)

## Ziel

In diesem *git-repository* werden Werkzeuge für die Mitteilungen des RVW gesammelt:

* Für Autoren von Artikeln der Online-Zeitschrift wird der *Zitationsstil* [`Mitteilungen-RVW.csl`](https://github.com/maybegeek/Mitteilungen-RVW-Werkzeuge/blob/master/Mitteilungen-RVW.csl) bereitgestellt, welcher mit dem je eigenen Literaturverwaltungsprogramm verwendet werden kann.
* Die *Gestaltungsrichtlinien* für Autoren werden ebenfalls hier vorgehalten.
* Zusätzlich sind die einzelnen Beiträge der Mitteilungs-Hefte ([Mitteilungen des Regensburger Verbunds für Werbeforschung](https://epub.uni-regensburg.de/rvw.html)) bibliografisch verzeichnet,
* wie auch die Publikationsliste der Mitglieder des RVW  ([werbeforschung.org](http://www.werbeforschung.org)) als Bibliografie in Form strukturierter Daten (`BibTeX`) im Angebot.

## Mitteilungen-RVW-Bibliografie

Verzeichnis der Einzelbeiträge der Mitteilungen des Regensburger Verbunds für Werbeforschung – RVW

### `*.bib`-Dateien

In der Datei `Mitteilungen-RVW-Bibliografie.bib` sind die Einzelbeiträge der einzelnen Hefte der Zeitschrift „Mitteilungen des Regensburger Verbunds für Werbeforschung – RVW“ aufgeführt (als `@article`). Zudem sind die einzelnen Hefte referenzierbar (als `@periodical`).

Auf die Verwendung des `BibTeX`/`BibLaTeX`-Feldes `crossref` wurde verzichtet, da der Import in anderen Literaturverwaltungsprogrammen (im Gegensatz zur bloßen Verwendung mit `BibTeX`/`BibLaTeX`) nicht zur gewünschten Verknüpfung führt.

In der Datei `RVW-Publikationen.bib` sind die Publikationen der Mitglieder des RVW von der Website des Verbunds für Werbeforschung ([http://werbeforschung.org](http://werbeforschung.org)) verzeichnet.

### Beispiele

Als Beispiele dienen die Dateien `Mitteilungen-RVW-Bibliografie.pdf` und `RVW-Publikationen.pdf` (sowie im „Projekt Gutenberg Plain Text Format“-formatiert `Mitteilungen-RVW-Bibliografie.txt` und `RVW-Publikationen.txt`), welche `pandoc` aus den Quelldateien `Mitteilungen-RVW-Bibliografie.md` und `RVW-Publikationen.md` unter Zuhilfenahme der bibliografischen Daten aus `Mitteilungen-RVW-Bibliografie.bib` sowie `RVW-Publikationen.bib` in Verbindung mit dem Zitationsstil `Mitteilungen-RVW.csl` erstellt.

Hier beispielsweise die Dateien:
* [Mitteilungen-RVW-Bibliografie.pdf](https://github.com/maybegeek/Mitteilungen-RVW-Werkzeuge/blob/master/Mitteilungen-RVW-Bibliografie.pdf)
* [RVW-Publikationen.pdf](https://github.com/maybegeek/Mitteilungen-RVW-Werkzeuge/blob/master/RVW-Publikationen.pdf)


## Zitationsstil der Mitteilungen des RVW

Oftmals steht zwischen der Fertigstellung eines Beitrags und dessen Einreichung noch die Anpassung hinsichtlich der spezifischen Anforderungen. Um ihnen bereits beim Schreiben für die [Mitteilungen](http://epub.uni-regensburg.de/rvw.html) des [Regensburger Verbund für Werbeforschung (RVW)](http://www.werbeforschung.org/) hinsichtlich des Zitationsstils behilflich zu sein bieten wir hierfür eine `csl`-Datei zur Nutzung an. Eine Vielzahl von Literaturverwaltungsprogrammen bietet die Einbindung von solchen Zitationsstilen ([*citation style language*](http://citationstyles.org/)) an.

### Installation

Für ihr Literaturverwaltungsprogramm (z.B `Zotero`) oder in Verbindung mit Konvertern wie `pandoc` benötigen sie die Datei `Mitteilungen-RVW.csl`, welche hier heruntergeladen werden kann (*clone or download*, oder als *release*).
