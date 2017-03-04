#!/bin/bash
git-latexdiff -v --bibtex --main progen3d.tex 44362ec2db5 --

cp progen3d.pdf progen3d_diff.pdf
