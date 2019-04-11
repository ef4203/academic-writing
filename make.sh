#!/bin/bash

pandoc -s --csl=chicago.csl \
    --variable documentclass=article \
    --bibliography=mybooks.bib \
    -o ${1//.md}.pdf ${1}

echo "Generated ${1//.md}.pdf"
