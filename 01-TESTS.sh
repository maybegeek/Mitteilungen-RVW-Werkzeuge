#! /usr/bin/bash

D_BIBLIO=rvw-biblio
D_CSL=rvw-csl
D_LAYOUT=rvw-layout
D_TEST=rvw-test

echo "# # # # # # # # # # # # # # #"
echo "# test .bib to .yaml        #"
echo "# RVW-Publikationen.bib     #"
echo "# => RVW-Publikationen.yaml #"
echo "# # # # # # # # # # # # # # #"
echo " "
pandoc $D_BIBLIO/RVW-Publikationen.bib \
--verbose -s \
-f biblatex \
-t markdown-smart \
--template=$D_BIBLIO/RVW-Publikationen-yaml-template.txt \
-o $D_TEST/RVW-Publikationen.yaml
echo " "

echo "# # # # # # # # # # # # # # #"
echo "# test .bib to .json        #"
echo "# RVW-Publikationen.bib     #"
echo "# => RVW-Publikationen.json #"
echo "# # # # # # # # # # # # # # #"
echo " "
pandoc $D_BIBLIO/RVW-Publikationen.bib \
--verbose -s \
-f biblatex \
-t csljson \
-o $D_TEST/RVW-Publikationen.json
echo " "

echo "# # # # # # # # # # # # # # # #"
echo "# test .bib to .yaml          #"
echo "# biblio-mitteilungen.bib     #"
echo "# => biblio-mitteilungen.yaml #"
echo "# # # # # # # # # # # # # # # #"
echo " "
pandoc $D_BIBLIO/biblio-mitteilungen.bib \
--verbose -s \
-f biblatex \
-t markdown-smart \
--template=$D_BIBLIO/biblio-mitteilungen-yaml-template.txt \
-o $D_TEST/biblio-mitteilungen.yaml
echo " "

echo "# # # # # # # # # # # # # # # #"
echo "# test .bib to .json          #"
echo "# biblio-mitteilungen.bib     #"
echo "# => biblio-mitteilungen.json #"
echo "# # # # # # # # # # # # # # # #"
echo " "
pandoc $D_BIBLIO/biblio-mitteilungen.bib \
--verbose -s \
-f biblatex \
-t csljson \
-o $D_TEST/biblio-mitteilungen.json
echo " "

echo "# # # # # # # # # # # # # # # # # # # #"
echo "# test .bib to .htm                   #"
echo "# biblio-mitteilungen.bib             #"
echo "# => biblio-mitteilungen-biblatex.htm #"
echo "# # # # # # # # # # # # # # # # # # # #"
echo " "
pandoc $D_BIBLIO/RVW-web.md \
--verbose \
-f markdown \
-C --biblio=$D_BIBLIO/biblio-mitteilungen.bib \
--csl=$D_CSL/Mitteilungen-RVW.csl \
-t html5 \
-o $D_TEST/biblio-mitteilungen-biblatex.htm
echo " "

echo "# # # # # # # # # # # # # # # # # # # #"
echo "# test .yaml to .htm                  #"
echo "# biblio-mitteilungen.yaml            #"
echo "# => biblio-mitteilungen-yaml.htm     #"
echo "# # # # # # # # # # # # # # # # # # # #"
echo " "
pandoc $D_BIBLIO/RVW-web.md \
--verbose \
-f markdown \
-C --biblio=$D_TEST/biblio-mitteilungen.yaml \
--csl=$D_CSL/Mitteilungen-RVW.csl \
-t html5 \
-o $D_TEST/biblio-mitteilungen-yaml.htm
echo " "

echo "# # # # # # # # # # # # # # # # # # # #"
echo "# test .json to .htm                  #"
echo "# biblio-mitteilungen.json            #"
echo "# => biblio-mitteilungen-json.htm     #"
echo "# # # # # # # # # # # # # # # # # # # #"
echo " "
pandoc $D_BIBLIO/RVW-web.md \
--verbose \
-f markdown \
-C --biblio=$D_TEST/biblio-mitteilungen.json \
--csl=$D_CSL/Mitteilungen-RVW.csl \
-t html5 \
-o $D_TEST/biblio-mitteilungen-json.htm
echo " "

echo "# # # # # # # # # # # # # # # #"
echo "# Hauptumwandlung             #"
echo "# biblio-mitteilungen.yaml    #"
echo "# => bib-mitteilungen-web.htm #"
echo "# # # # # # # # # # # # # # # #"
echo " "
pandoc $D_BIBLIO/RVW-web.md \
--verbose \
-f markdown \
-C --biblio=$D_TEST/biblio-mitteilungen.yaml \
--csl=$D_CSL/Mitteilungen-RVW.csl \
-t html5 \
-o $D_TEST/bib-mitteilungen-web.htm
echo " "

echo "# # # # # # # # # # # # # # # # # # # # # # # # # # #"
echo "# diff                                              #"
echo "# file1 = rvw-test/biblio-mitteilungen-biblatex.htm #"
echo "# file2 = rvw-test/biblio-mitteilungen-yaml.htm     #"
echo "# file3 = rvw-test/biblio-mitteilungen-json.htm     #"
echo "# file4 = rvw-test/bib-mitteilungen-web.htm         #"
echo "# file5 = rvw-biblio/bib-mitteilungen-web.htm       #"
echo "# # # # # # # # # # # # # # # # # # # # # # # # # # #"
echo " "
diff --unified=0 --from-file \
$D_TEST/biblio-mitteilungen-biblatex.htm \
$D_TEST/biblio-mitteilungen-yaml.htm \
$D_TEST/biblio-mitteilungen-json.htm \
$D_TEST/bib-mitteilungen-web.htm \
$D_BIBLIO/bib-mitteilungen-web.htm
echo " "


# und nun für RVW-Publikationen jahresweise gruppiert
# und RVW-Publikationen alphabetisch

echo "# # # # # # # # # # # # # # # # # # # #"
echo "# test .bib to .htm                   #"
echo "# RVW-Publikationen.bib               #"
echo "# => RVW-Publikationen-biblatex.htm   #"
echo "# # # # # # # # # # # # # # # # # # # #"
echo " "
pandoc $D_BIBLIO/RVW-web.md \
--verbose \
-f markdown \
-C --biblio=$D_BIBLIO/RVW-Publikationen.bib \
--csl=$D_CSL/Mitteilungen-RVW-group-by-year.csl \
--lua-filter=$D_BIBLIO/RVW-web.lua \
-t html5 -o $D_TEST/RVW-Publikationen-biblatex.htm
echo " "

echo "# # # # # # # # # # # # # # # # # # # #"
echo "# test .yaml to .htm                  #"
echo "# RVW-Publikationen.yaml              #"
echo "# => RVW-Publikationen-yaml.htm       #"
echo "# # # # # # # # # # # # # # # # # # # #"
echo " "
pandoc $D_BIBLIO/RVW-web.md \
--verbose \
-f markdown \
-C --biblio=$D_TEST/RVW-Publikationen.yaml \
--csl=$D_CSL/Mitteilungen-RVW-group-by-year.csl \
--lua-filter=$D_BIBLIO/RVW-web.lua \
-t html5 -o $D_TEST/RVW-Publikationen-yaml.htm
echo " "

echo "# # # # # # # # # # # # # # # # # # # #"
echo "# test .json to .htm                  #"
echo "# RVW-Publikationen.json              #"
echo "# => RVW-Publikationen-json.htm       #"
echo "# # # # # # # # # # # # # # # # # # # #"
echo " "
pandoc $D_BIBLIO/RVW-web.md \
--verbose \
-f markdown \
-C --biblio=$D_TEST/RVW-Publikationen.json \
--csl=$D_CSL/Mitteilungen-RVW-group-by-year.csl \
--lua-filter=$D_BIBLIO/RVW-web.lua \
-t html5 -o $D_TEST/RVW-Publikationen-json.htm
echo " "

echo "# # # # # # # # # # # # # #"
echo "# Hauptumwandlung         #"
echo "# .yaml to .htm           #"
echo "# RVW-Publikationen.yaml  #"
echo "# => RVW-web.htm          #"
echo "# # # # # # # # # # # # # #"
echo " "
pandoc $D_BIBLIO/RVW-web.md \
--verbose \
-f markdown \
-C --biblio=$D_BIBLIO/RVW-Publikationen.bib \
--csl=$D_CSL/Mitteilungen-RVW-group-by-year.csl \
--lua-filter=$D_BIBLIO/RVW-web.lua \
-t html5 -o $D_TEST/RVW-web.htm
echo " "

echo "# # # # # # # # # # # # # # # # # # # # # # # # # # #"
echo "# 9                                                 #"
echo "# diff                                              #"
echo "# file1 = rvw-test/RVW-Publikationen-biblatex.htm   #"
echo "# file2 = rvw-test/RVW-Publikationen-yaml.htm       #"
echo "# file3 = rvw-test/RVW-Publikationen-json.htm       #"
echo "# file4 = rvw-test/RVW-web.htm                      #"
echo "# file5 = rvw-biblio/RVW-web.htm                    #"
echo "# # # # # # # # # # # # # # # # # # # # # # # # # # #"
echo " "
diff --unified=0 --from-file \
$D_TEST/RVW-Publikationen-biblatex.htm \
$D_TEST/RVW-Publikationen-yaml.htm \
$D_TEST/RVW-Publikationen-json.htm \
$D_TEST/RVW-web.htm \
$D_BIBLIO/RVW-web.htm
echo " "

echo "# # # # # # # # # # # # #"
echo "# .bib to .htm          #"
echo "# RVW-Publikationen.bib #"
echo "# => RVW-alpha-web.htm  #"
echo "# # # # # # # # # # # # #"
echo " "
pandoc $D_BIBLIO/RVW-web.md \
--verbose \
-f markdown \
-C --biblio=$D_BIBLIO/RVW-Publikationen.bib \
--csl=$D_CSL/Mitteilungen-RVW.csl \
-t html5 -o $D_TEST/RVW-alpha-web.htm
echo " "
