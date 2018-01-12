# Makefile for a dummy article with simple latexmk compilation
# Copyright (c) 2018 Lilian Besson (Naereen), https://github.com/Naereen
# The MIT License (MIT)
# https://github.com/Naereen/LaTeX-article-with-Pokemon-numbering
#
SHELL=/usr/bin/env /bin/bash

all_test:	test test_left test_right test_rorate test_lorem

test:
	latexmk -gg -pdf test.tex
test_left:
	latexmk -gg -pdf test_left.tex
test_right:
	latexmk -gg -pdf test_right.tex
test_rotate:
	latexmk -gg -pdf test_rotate.tex
test_lorem:
	latexmk -gg -pdf test_lorem.tex

send:	send_zamok
send_zamok:
	CP --exclude=.git ./ ${Szam}publis/LaTeX-article-with-Pokemon-numbering.git/

clean:
	latexmk -c
	rm -vf *.bbl *.synctex.gz *.loa
