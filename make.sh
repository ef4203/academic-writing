#!/bin/bash

pandoc -s --csl=chicago.csl \
     --latex-engine=xelatex \
    --variable documentclass=paper \
    --bibliography=mybooks.bib \
    -o ${1//.md}.pdf ${1}

echo "Generated ${1//.md}.pdf"
