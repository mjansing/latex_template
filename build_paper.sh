#!/bin/bash

echo "building document..."

# sort acronyms
sort acronyms.tex -o acronyms.tex

pdflatex main-document.tex
pdflatex main-document.tex
bibtex8 -W main-document
pdflatex main-document.tex

echo "removing temporary latex files..."
mv main-document.pdf paper.pdf
rm *.aux
rm *.lof
rm *.log
rm *.run.xml
rm *.toc
rm *.lol
rm *.lot
rm *.out
rm *.bib
rm *.bbl
rm *.blg

rm section/*.aux