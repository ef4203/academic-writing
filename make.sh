#!/bin/bash

pandoc -s --csl=chicago.csl \
    --variable documentclass=report \
    --bibliography=mybooks.bib \
    -o ${1//.md}.pdf ${1}

echo "Generated ${1//.md}.pdf"
