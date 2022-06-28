#! /usr/bin/bash

D_BIBLIO=rvw-biblio
D_CSL=rvw-csl
D_LAYOUT=rvw-layout
D_TEST=rvw-test

echo "# # # # # # # # # # # #"
echo "# 1                   #"
echo "# test .bib to .yaml  #"
echo "# RVW-Publikationen   #"
echo "# # # # # # # # # # # #"
echo " "
pandoc $D_BIBLIO/RVW-Publikationen.bib \
--verbose -s \
-f biblatex \
-t markdown-smart \
--template=$D_BIBLIO/RVW-Publikationen-yaml-template.txt \
-o $D_TEST/RVW-Publikationen.yaml
echo " "

echo "# # # # # # # # # # # #"
echo "# 2                   #"
echo "# test .bib to .yaml  #"
echo "# biblio-mitteilungen #"
echo "# # # # # # # # # # # #"
echo " "
pandoc $D_BIBLIO/biblio-mitteilungen.bib \
--verbose -s \
-f biblatex \
-t markdown-smart \
--template=$D_BIBLIO/biblio-mitteilungen-yaml-template.txt \
-o $D_TEST/biblio-mitteilungen.yaml
echo " "

echo "# # # # # # # # # # # #"
echo "# 3                   #"
echo "# test .bib to .json  #"
echo "# RVW-Publikationen   #"
echo "# # # # # # # # # # # #"
echo " "
pandoc $D_BIBLIO/RVW-Publikationen.bib \
--verbose -s \
-f biblatex \
-t csljson \
-o $D_TEST/RVW-Publikationen.json
echo " "

echo "# # # # # # # # # # # #"
echo "# 4                   #"
echo "# test .bib to .json  #"
echo "# biblio-mitteilungen #"
echo "# # # # # # # # # # # #"
echo " "
pandoc $D_BIBLIO/biblio-mitteilungen.bib \
--verbose -s \
-f biblatex \
-t csljson \
-o $D_TEST/biblio-mitteilungen.json
echo " "

echo "# # # # # # # # # # # #"
echo "# 5                   #"
echo "# test .bib to .htm   #"
echo "# biblio-mitteilungen #"
echo "# # # # # # # # # # # #"
echo " "
pandoc $D_BIBLIO/RVW-web.md \
--verbose \
-f markdown \
-C --biblio=$D_BIBLIO/biblio-mitteilungen.bib \
--csl=$D_CSL/Mitteilungen-RVW.csl \
-t html5 \
-o $D_TEST/biblio-mitteilungen-biblatex.htm
echo " "

echo "# # # # # # # # # # # #"
echo "# 6                   #"
echo "# test .yaml to .htm  #"
echo "# biblio-mitteilungen #"
echo "# # # # # # # # # # # #"
echo " "
pandoc $D_BIBLIO/RVW-web.md \
--verbose \
-f markdown \
-C --biblio=$D_TEST/biblio-mitteilungen.yaml \
--csl=$D_CSL/Mitteilungen-RVW.csl \
-t html5 \
-o $D_TEST/biblio-mitteilungen-yaml.htm
echo " "

echo "# # # # # # # # # # # #"
echo "# 7                   #"
echo "# test .json to .htm  #"
echo "# biblio-mitteilungen #"
echo "# # # # # # # # # # # #"
echo " "
pandoc $D_BIBLIO/RVW-web.md \
--verbose \
-f markdown \
-C --biblio=$D_TEST/biblio-mitteilungen.json \
--csl=$D_CSL/Mitteilungen-RVW.csl \
-t html5 \
-o $D_TEST/biblio-mitteilungen-json.htm
echo " "

echo "# # # # # # # # # # # # # # # # # # # # # # #"
echo "# 8                                         #"
echo "# diff3 file1 file2 file3                   #"
echo "# file1 = biblio-mitteilungen-biblatex.htm  #"
echo "# file2 = biblio-mitteilungen-yaml.htm      #"
echo "# file3 = biblio-mitteilungen-json.htm      #"
echo "# # # # # # # # # # # # # # # # # # # # # # #"
echo " "
diff3 \
$D_TEST/biblio-mitteilungen-biblatex.htm \
$D_TEST/biblio-mitteilungen-yaml.htm \
$D_TEST/biblio-mitteilungen-json.htm
echo " "

exit 1

echo "# # # # # # # # # # # #"
echo "# 5                   #"
echo "# test .bib to .htm   #"
echo "# biblio-mitteilungen #"
echo "# # # # # # # # # # # #"
echo " "
pandoc $D_BIBLIO/RVW-web.md \
--verbose -f markdown -C --biblio=$D_TEST/RVW-Publikationen.bib \
--csl=$D_CSL/Mitteilungen-RVW.csl --lua-filter=$D_BIBLIO/RVW-web.lua \
-t html5 -o $D_TEST/RVW-web.htm
echo " "

echo "#######"
echo "# 3.2 #"
echo "#######"
echo ".yaml nach .htm für hugo"
echo "RVW-Mitteilungen"
echo " "
pandoc $D_BIBLIO/bib-mitteilungen-web.md \
--verbose -f markdown -C --biblio=$D_TEST/biblio-mitteilungen.yaml \
--csl=$D_CSL/Mitteilungen-RVW.csl \
-t html5 -o $D_TEST/bib-mitteilungen-web.htm
echo " "

echo "#######"
echo "# 3.3 #"
echo "#######"
echo ".yaml nach .htm für hugo"
echo "RVW-Publikationen"
echo "alphabetisch"
echo " "
pandoc $D_BIBLIO/RVW-web.md \
--verbose -f markdown -C --biblio=$D_TEST/RVW-Publikationen.yaml \
--csl=$D_CSL/Mitteilungen-RVW.csl \
-t html5 -o $D_TEST/RVW-alpha-web.htm
echo " "


exit 1


echo "#####"
echo "# 4 #"
echo "#####"
echo "rsync-ing to docs/"
echo "* biblio-mitteilungen.bib"
echo "* biblio-mitteilungen.yaml"
echo "* RVW-Publikationen.bib"
echo "* RVW-Publikationen.bib"
echo "* Mitteilungen-RVW.csl"
echo "* RVW-web.csl"
echo "* RVW-web.htm"
echo "* RVW-web-alpha.htm"
echo "* RVW-web.lua"
echo "* bib-mitteilungen-web.htm"
echo " "
rsync -avhzPu --checksum \
  $D_BIBLIO/biblio-mitteilungen.bib \
  $D_BIBLIO/biblio-mitteilungen.yaml \
  $D_BIBLIO/RVW-Publikationen.bib \
  $D_BIBLIO/RVW-Publikationen.yaml \
  $D_BIBLIO/RVW-web.htm \
  $D_BIBLIO/RVW-alpha-web.htm \
  $D_BIBLIO/bib-mitteilungen-web.htm \
  $D_BIBLIO/RVW-web.lua \
  $D_CSL/Mitteilungen-RVW.csl \
  $D_CSL/RVW-web.csl \
  docs/
echo " "

echo "#####"
echo "# 5 #"
echo "#####"
echo "rsync-ing layout/ nach docs/layout/"
echo " "
rsync -avhzPu --checksum $D_LAYOUT/ $D_OUT/layout/ --delete
echo " "

echo "#####"
echo "# 6 #"
echo "#####"

echo "* pandoc rvw-content/index.md nach docs/index.html"
pandoc -s --wrap=none -C -f markdown -t html5 --verbose --shift-heading-level-by=1 \
  --template=$D_LAYOUT/rvw-website.tmpl $D_CONT/index.md -o $D_CONT/index.html

echo "* pandoc rvw-content/imprint.md nach docs/imprint.html"
pandoc -s --wrap=none -C -f markdown -t html5 --verbose --shift-heading-level-by=1 \
  --template=$D_LAYOUT/rvw-website.tmpl $D_CONT/imprint.md -o $D_CONT/imprint.html

echo "* pandoc rvw-content/formalia-mitteilungen.md nach docs/formalia-mitteilungen.html"
pandoc -s --wrap=none -C -f markdown -t html5 --verbose --shift-heading-level-by=1 \
  --template=$D_LAYOUT/rvw-website.tmpl $D_CONT/formalia-mitteilungen.md -o $D_CONT/formalia-mitteilungen.html

echo "* pandoc rvw-content/biblio-rvw.md nach docs/biblio-rvw.html"
pandoc -s --wrap=none -C -f markdown -t html5 --verbose --shift-heading-level-by=1 \
  --template=$D_LAYOUT/rvw-website.tmpl $D_CONT/biblio-rvw.md -o $D_CONT/biblio-rvw.html

echo "* pandoc rvw-content/biblio-mitteilungen.md nach docs/biblio-mitteilungen.html"
pandoc -s --wrap=none -C -f markdown -t html5 --verbose --shift-heading-level-by=1 \
  --template=$D_LAYOUT/rvw-website.tmpl $D_CONT/biblio-mitteilungen.md -o $D_CONT/biblio-mitteilungen.html
echo " "


echo "#####"
echo "# 7 #"
echo "#####"
echo "rsync-ing rvw-content/index.html nach docs/index.html"
echo "rsync-ing rvw-content/imprint.html nach docs/imprint.html"
echo "rsync-ing rvw-content/formalia-mitteilungen.html nach docs/formalia-mitteilungen.html"
echo "rsync-ing rvw-content/biblio-rvw.html nach docs/biblio-rvw.html"
echo "rsync-ing rvw-content/biblio-mitteilungen.html nach docs/biblio-mitteilungen.html"
rsync -avhzPu --checksum --delete \
  $D_CONT/index.html \
  $D_CONT/imprint.html \
  $D_CONT/formalia-mitteilungen.html \
  $D_CONT/biblio-rvw.html \
  $D_CONT/biblio-mitteilungen.html \
  $D_OUT
