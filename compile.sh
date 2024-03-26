#!/bin/sh

rm -r build

for OUTPUT in $(find src -type d)
do
  mkdir dist/$OUTPUT
done

latexmk --lualatex --output-directory=build Report.tex
