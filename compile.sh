#!/bin/sh
cp bibliography.bib output/
cd output/
xelatex cv
biber cv
xelatex cv