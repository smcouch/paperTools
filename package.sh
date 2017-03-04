#!/bin/bash

cp progen3d.tex ms.tex
cp progen3d.bbl ms.bbl
cp progen3d.pdf ms.pdf

for f in *.png
do
    convert ./"$f" ./"${f%.png}.pdf"
done
tar cvfz sub2_22apr.tar.gz emulateapj.cls hapj.bst ms.tex ms.bbl ms.pdf f*.pdf

rm ms.tex ms.bbl ms.pdf
