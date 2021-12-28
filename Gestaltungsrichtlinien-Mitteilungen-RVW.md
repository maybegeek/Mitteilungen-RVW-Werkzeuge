---
title: 'Gestaltungsrichtlinien RVW'
subtitle: 'für Beiträge der „Mitteilungen des Regensburger Verbunds für Werbeforschung – RVW“'
date: '28. Dezember 2021'
documentclass: scrartcl
papersize: a4
classoption:
- DIV=9
- headinclude=true
- footinclude=false
- titlepage=false
lang: de-DE
mainfont: Vollkorn-Regular.otf
mainfontoptions:
- Path=./layout/vollkorn-4-105/PS-OTF/
- UprightFont=Vollkorn-Regular
- BoldFont=Vollkorn-Bold
- ItalicFont=Vollkorn-Italic
- BoldItalicFont=Vollkorn-BoldItalic
- Numbers=Lining
sansfont: Vollkorn-Regular.otf
sansfontoptions:
- Path=./layout/vollkorn-4-105/PS-OTF/
- UprightFont=Vollkorn-Regular
- BoldFont=Vollkorn-Bold
- ItalicFont=Vollkorn-Italic
- BoldItalicFont=Vollkorn-BoldItalic
- Numbers=Lining
header-includes:
- \DeclareTextCommandDefault{\nobreakspace}{\leavevmode\nobreak\ }
- \deffootnote[2em]{2em}{2.2em}{\thefootnotemark\ }
- \renewcommand*{\sectionmarkformat}{}
- \defaultfontfeatures{Mapping=tex-text,Scale=MatchLowercase}
- \usepackage{ragged2e}
- \widowpenalty=80000
- \clubpenalty=80000
- \renewcommand{\tightlist}{\RaggedRight\setlength{\itemsep}{-0.3\baselineskip}}
- \newcommand{\kurz}[1]{\hspace*{0pt}\marginpar{\hfill\raisebox{1pt}{\scriptsize{Kurzbeleg\,\,▷}}}\hspace*{0pt}}
- \newcommand{\voll}[1]{\hspace*{0pt}\marginpar{\hfill\raisebox{1pt}{\scriptsize{Vollbeleg\,\,▶}}}\hspace*{0pt}}
- \reversemarginpar
- \hypersetup{pdfborderstyle={/S/U/W 0.1},linkbordercolor=white,urlbordercolor=0.8 0.8 0.8}
---

[//]: # (
  pandoc Gestaltungsrichtlinien-Mitteilungen-RVW.md -s --pdf-engine=xelatex -o Gestaltungsrichtlinien-Mitteilungen-RVW.pdf
  pandoc Gestaltungsrichtlinien-Mitteilungen-RVW.md -w plain+gutenberg --template=layout/tmpl-plain.txt -o Gestaltungsrichtlinien-Mitteilungen-RVW.txt
  )

Artikel der „Mitteilungen des Regensburger Verbunds für Werbeforschung – RVW“ sollten entlang folgender Regeln verfasst werden, um Einheitlichkeit hinsichtlich der Formalia zu gewährleisten, wie auch die einfache Übernahme ins Layout der Zeitschrift zu ermöglichen. Zur Orientierung nehmen sie bitte Einsicht in die schon veröffentlichten Ausgaben: [https://epub.uni-regensburg.de/rvw.html](https://epub.uni-regensburg.de/rvw.html)

* [Heft 1 / 2013 : Schwerpunkt: ALTERnativ werben](https://epub.uni-regensburg.de/29199/)
* [Heft 2 / 2014 : Schwerpunkt: Werbung und Medizin](https://epub.uni-regensburg.de/31508/)
* [Heft 3 / 2015 : Schwerpunkt: Risiko!](https://epub.uni-regensburg.de/33502/)
* [Heft 4 / 2016 : Jubiläumsausgabe 10 Jahre RVW](https://epub.uni-regensburg.de/34935/)
* [Heft 5 / 2017 : Schwerpunkt: Aufgetischt!](https://epub.uni-regensburg.de/36763/)
* [Heft 6 / 2018 : Schwerpunkt: Out of Line](https://epub.uni-regensburg.de/40579/)
* [Heft 7 / 2019 : Schwerpunkt: Autonomes Fahren im Visier der Werbung](https://epub.uni-regensburg.de/43467/)
* [Heft 8 / 2020 : Schwerpunkt: Corona, Wein und Badeschaum](https://epub.uni-regensburg.de/50903/)

## Gestaltraster

Für das Magazin „Mitteilungen des RVW“ wurde ein zweispaltiges Gestaltraster unter Verwendung der Seitengröße DIN A4 verwendet. Das konventionelle Seitenformat wurde gewählt, da auf ein digitales Erscheinen abgestellt wird. Zweispaltigkeit wurde gewählt, da die Seitenbreite zwar genutzt werden soll, allerdings einspaltiger Satz in Verbindung mit dann hoher Zeichenanzahl der Lesbarkeit abträglich ist.

Ihr Text kann zweispaltig oder einspaltig eingereicht werden, obige Informationen sollen dem besseren Verständnis dienen, und Ihnen schon vorab ein ungefähres Bild Ihres Artikels im Layout der Zeitschrift liefern.


## Formatierungen im Text

* Keine automatische Silbentrennung.
* Hervorhebungen im Text (fett, kursiv, Kapitälchen usw.) bitte sparsam verwenden; nach Möglichkeit keine Unterstreichungen.


## Artikeltitel

Der Titel und Untertitel Ihres Beitrags und Ihr Autorenname werden einspaltig über dem Inhalt gesetzt. Untertitel werden im Inhaltsverzeichnis nicht aufgeführt.


## Textstruktur der Gliederungsebene

Zur Gliederung Ihres Textes stehen Ihnen bevorzugt nicht nummerierte Überschriften zur Verfügung. Wir würden vorschlagen nicht tiefer als bis zur dritten Überschriften-Ebene aufzugliedern. Wir bemühen uns die semantische Struktur -- welche Sie Ihrem Text auf Gliederungsebene mitgegeben haben -- auch in unserem Layout zu realisieren.


## Zitation/Fußnoten

Im Text können Sie Fußnoten verwenden, oder Im-Text-Zitation, also einen Klammerausdruck mit Verweis auf Autor und Jahr, ggf. getrennt durch Doppelpunkt auch mit der spezifischen Seiten(raum)angabe.

Es obliegt Ihrer Art des wissenschaftlichen Schreibens, welche Form/Formen Sie wählen, die Lesbarkeit des Textes und die Überprüfbarkeit der Aussagen sollte ein gemeinsames Ziel sein.


## Literaturangaben

Das Einhalten der bibliographischen Darstellung wie in den „Mitteilungen des RVW“ gepflegt ist nicht zwingend notwendig. **Zwingend ist allerdings die Vollständigkeit der Angaben, gerade für Internetquellen; Abbildungen (Bildlegende inkl. Quelle, Urheber!); Werbeanzeigen.**

Beispiel Internetquelle:  
Autor (Entstehungsdatum soweit recherchierbar). *Titel*. URL – Zugriffsdatum.

\voll{}Kuball, Marianne & Reden-Lütcken, Katharina von (2009). *Schönes Haar in jedem Alter – Draftfcb kreiert Kampagne für neue NIVEA beautiful Age-Linie*. URL: [http://www.draftfcb.de/de/pressebereich/neues-von-draftfcb/schoenes-haar-in-jedem-alter-draftfcb-kreiert-kampagne-fuer-neue-nivea-beautiful-age-linie-75/](http://www.draftfcb.de/de/pressebereich/neues-von-draftfcb/schoenes-haar-in-jedem-alter-draftfcb-kreiert-kampagne-fuer-neue-nivea-beautiful-age-linie-75/) – Zugriff: 1.5.2013.

Beispiel Werbeanzeige:  
Firma (Entstehungsdatum). *Titel*. Quelle. (bei Internetquellen zusätzlich URL und Zugriffsdatum)

\voll{}Doppelherz (2007). *„Sitznachbar“* [Werbung]. ARD: Radio-Kreativ-Wettbewerb 2007 (Broschüre und CD-Rom).


## Verwendung von Bildern

Grafiken werden in einer Spalte gesetzt. Hieraus resultiert allerdings auch, dass wir bei Bildern dem Prinzip des „Floatings“ folgen müssen: **Referenzieren Sie im Text auf Abbildungen und deren Abbildungsnummer, da die Abbildung selbst ggfs. nicht am Ort des Referenzierens gesetzt werden kann.**


## Einreichung

Einreichung als Textdatei (Formate: Word {`*.doc`,`*.docx`} oder Libre-Office {`*.odt`}), wobei die referenzierten Bilder als **eigenständige Dateien** mitversandt werden.

Vielen Dank für Ihre Mühen.
