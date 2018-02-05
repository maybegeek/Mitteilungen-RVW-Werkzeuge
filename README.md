# Mitteilungen-RVW-Bibliografie

Verzeichnis der Einzelbeiträge der Mitteilungen des Regensburger Verbunds für Werbeforschung – RVW

## `*.bib`-Datei

In der Datei `Mitteilungen-RVW-Bibliografie.bib` sind die Einzelbeiträge der einzelnen Hefte der Zeitschrift „Mitteilungen des Regensburger Verbunds für Werbeforschung – RVW“ aufgeführt (als `@article`). Zudem sind die einzelnen Hefte referenzierbar (als `@periodical`).

Auf die Verwendung des `BibTeX`/`BibLaTeX`-Feldes `crossref` wurde verzichtet, da der Import in anderen Literaturverwaltungsprogrammen (im Gegensatz zur bloßen Verwendung mit `BibTeX`/`BibLaTeX`) nicht zur gewünschten Verknüpfung führt.

## Beispiel

Als Beispiel dienen die Dateien im `Testing`-Ordner, welche `pandoc` aus der Quelldatei `RVW.md` unter Zuhilfenahme der bibliografischen Daten aus der `Mitteilungen-RVW-Bibliografie.bib` in Verbindung mit dem Zitationsstil `Mitteilungen-RVW.csl` erstellt.

Hier beispielsweise die Datei: [RVW.pdf](https://github.com/maybegeek/Mitteilungen-RVW-Werkzeuge/blob/master/Testing/RVW.pdf)


# Zitationsstil der Mitteilungen des RVW

Oftmals steht zwischen der Fertigstellung eines Beitrags und dessen Einreichung noch die Anpassung hinsichtlich der spezifischen Anforderungen. Um ihnen bereits beim Schreiben für die [Mitteilungen](http://epub.uni-regensburg.de/rvw.html) des [Regensburger Verbund für Werbeforschung (RVW)](http://www.werbeforschung.org/) hinsichtlich des Zitationsstils behilflich zu sein bieten wir hierfür eine `csl`-Datei zur Nutzung an. Eine Vielzahl von Literaturverwaltungsprogrammen bietet die Einbindung von solchen Zitationsstilen ([*citation style language*](http://citationstyles.org/)) an.

## Installation

Für ihr Literaturverwaltungsprogramm (z.B `Zotero`) oder in Verbindung mit Konvertern wie `pandoc` benötigen sie die Datei `Mitteilungen-RVW.csl`, welche hier heruntergeladen werden kann (*clone or download*, oder als *release*).

In dieser frühen Phase der Umsetzung sind bereits die üblichsten Fälle der Nutzung implementiert.
