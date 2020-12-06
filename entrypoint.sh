#!/bin/sh
mkdir output/
docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` angelobasile/cvgenerator:1.3 details.yml -f markdown -t latex -o output/cv.tex --template=template.tex  --pdf-engine=xelatex --biblatex
docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` --entrypoint "/data/compile.sh" angelobasile/cvgenerator:1.3 