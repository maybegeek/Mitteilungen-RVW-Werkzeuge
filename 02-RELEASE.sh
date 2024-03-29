#! /usr/bin/bash

D_BIBLIO=rvw-biblio
D_CSL=rvw-csl
D_LAYOUT=rvw-layout
D_OUT=docs
D_CONT=rvw-content

echo "#####"
echo "# 1 #"
echo "#####"

echo ".bib nach .yaml konvertieren"
echo "RVW-Publikationen.bib nach"
echo "RVW-Publikationen.yaml."
echo " "
pandoc $D_BIBLIO/RVW-Publikationen.bib --verbose -s -f biblatex \
-t markdown-smart --template=$D_BIBLIO/RVW-Publikationen-yaml-template.txt \
-o $D_BIBLIO/RVW-Publikationen.yaml
echo " "

echo ".bib nach .yaml konvertieren"
echo "biblio-mitteilungen.bib nach"
echo "biblio-mitteilungen.yaml."
echo " "
pandoc $D_BIBLIO/biblio-mitteilungen.bib --verbose -s -f biblatex \
-t markdown-smart --template=$D_BIBLIO/biblio-mitteilungen-yaml-template.txt \
-o $D_BIBLIO/biblio-mitteilungen.yaml
echo " "

echo ".bib nach .json konvertieren"
echo "RVW-Publikationen.bib nach"
echo "RVW-Publikationen.json."
echo " "
pandoc $D_BIBLIO/RVW-Publikationen.bib --verbose -s -f biblatex \
-t csljson -o $D_BIBLIO/RVW-Publikationen.json
echo " "

echo ".bib nach .json konvertieren"
echo "biblio-mitteilungen.bib nach"
echo "biblio-mitteilungen.json."
echo " "
pandoc $D_BIBLIO/biblio-mitteilungen.bib --verbose -s -f biblatex \
-t csljson -o $D_BIBLIO/biblio-mitteilungen.json
echo " "

echo "#####"
echo "# 2 #"
echo "#####"


echo ".yaml nach .htm für hugo"
pandoc $D_BIBLIO/RVW-web.md \
--verbose -f markdown -C --biblio=$D_BIBLIO/RVW-Publikationen.yaml \
--csl=$D_CSL/Mitteilungen-RVW-group-by-year.csl --lua-filter=$D_BIBLIO/RVW-web.lua \
-t html5 -o $D_BIBLIO/RVW-web.htm
echo " "


echo ".yaml nach .htm für hugo"
echo "RVW-Mitteilungen"
echo " "
pandoc $D_BIBLIO/bib-mitteilungen-web.md \
--verbose -f markdown -C --biblio=$D_BIBLIO/biblio-mitteilungen.yaml \
--csl=$D_CSL/Mitteilungen-RVW.csl \
-t html5 -o $D_BIBLIO/bib-mitteilungen-web.htm
echo " "


echo ".yaml nach .htm für hugo"
echo "RVW-Publikationen"
echo "alphabetisch"
echo " "
pandoc $D_BIBLIO/RVW-web.md \
--verbose -f markdown -C --biblio=$D_BIBLIO/RVW-Publikationen.yaml \
--csl=$D_CSL/Mitteilungen-RVW.csl \
-t html5 -o $D_BIBLIO/RVW-alpha-web.htm
echo " "

echo "#####"
echo "# 3 #"
echo "#####"

rsync -avhzPu --checksum \
  $D_BIBLIO/biblio-mitteilungen.bib \
  $D_BIBLIO/biblio-mitteilungen.yaml \
  $D_BIBLIO/biblio-mitteilungen.json \
  $D_BIBLIO/RVW-Publikationen.bib \
  $D_BIBLIO/RVW-Publikationen.yaml \
  $D_BIBLIO/RVW-Publikationen.json \
  $D_BIBLIO/RVW-web.htm \
  $D_BIBLIO/RVW-alpha-web.htm \
  $D_BIBLIO/bib-mitteilungen-web.htm \
  $D_BIBLIO/RVW-web.lua \
  $D_CSL/Mitteilungen-RVW.csl \
  $D_CSL/Mitteilungen-RVW-group-by-year.csl \
  docs/
echo " "

#echo "#####"
#echo "# 5 #"
#echo "#####"
#echo "rsync-ing layout/ nach docs/layout/"
#echo " "
#rsync -avhzPu --checksum $D_LAYOUT/ $D_OUT/layout/ --delete
#echo " "

# echo "#####"
# echo "# 6 #"
# echo "#####"

# echo "* pandoc rvw-content/index.md nach docs/index.html"
# pandoc -s --wrap=none -C -f markdown -t html5 --verbose --shift-heading-level-by=1 \
#   --template=$D_LAYOUT/rvw-website.tmpl $D_CONT/index.md -o $D_CONT/index.html

# echo "* pandoc rvw-content/imprint.md nach docs/imprint.html"
# pandoc -s --wrap=none -C -f markdown -t html5 --verbose --shift-heading-level-by=1 \
#   --template=$D_LAYOUT/rvw-website.tmpl $D_CONT/imprint.md -o $D_CONT/imprint.html

# echo "* pandoc rvw-content/formalia-mitteilungen.md nach docs/formalia-mitteilungen.html"
# pandoc -s --wrap=none -C -f markdown -t html5 --verbose --shift-heading-level-by=1 \
#   --template=$D_LAYOUT/rvw-website.tmpl $D_CONT/formalia-mitteilungen.md -o $D_CONT/formalia-mitteilungen.html

# echo "* pandoc rvw-content/biblio-rvw.md nach docs/biblio-rvw.html"
# pandoc -s --wrap=none -C -f markdown -t html5 --verbose --shift-heading-level-by=1 \
#   --template=$D_LAYOUT/rvw-website.tmpl $D_CONT/biblio-rvw.md -o $D_CONT/biblio-rvw.html

# echo "* pandoc rvw-content/biblio-mitteilungen.md nach docs/biblio-mitteilungen.html"
# pandoc -s --wrap=none -C -f markdown -t html5 --verbose --shift-heading-level-by=1 \
#   --template=$D_LAYOUT/rvw-website.tmpl $D_CONT/biblio-mitteilungen.md -o $D_CONT/biblio-mitteilungen.html
# echo " "


# echo "#####"
# echo "# 7 #"
# echo "#####"
# echo "rsync-ing rvw-content/index.html nach docs/index.html"
# echo "rsync-ing rvw-content/imprint.html nach docs/imprint.html"
# echo "rsync-ing rvw-content/formalia-mitteilungen.html nach docs/formalia-mitteilungen.html"
# echo "rsync-ing rvw-content/biblio-rvw.html nach docs/biblio-rvw.html"
# echo "rsync-ing rvw-content/biblio-mitteilungen.html nach docs/biblio-mitteilungen.html"
# rsync -avhzPu --checksum --delete \
#   $D_CONT/index.html \
#   $D_CONT/imprint.html \
#   $D_CONT/formalia-mitteilungen.html \
#   $D_CONT/biblio-rvw.html \
#   $D_CONT/biblio-mitteilungen.html \
#   $D_OUT
