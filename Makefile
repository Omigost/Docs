#
# AWS Cost Optimization Tool Project
#
# MIT License
# Copyright 2018
#
# Michał Balcerzak     (Univeristy of Warsaw)
# Michał Ołtarzewski   (Univeristy of Warsaw)
# Piotr Styczyński     (Univeristy of Warsaw)
# Gor Safaryn          (Univeristy of Warsaw)
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"),
# to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
# and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
# DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#
#

TEX=pdflatex -halt-on-error -output-directory dist
TEXFLAGS=
RM=rm -r -f

all: clean-all compile-all clean-dist
	echo "OK"

dist/thesis.pdf: src/thesis.tex thesisclass.cls
	$(TEX) $(TEXFLAGS) src/thesis.tex
	$(TEX) $(TEXFLAGS) src/thesis.tex
	
dist/introduction.pdf: src/introduction.tex
	$(TEX) $(TEXFLAGS) src/introduction.tex
	$(TEX) $(TEXFLAGS) src/introduction.tex
	
compile-all: dist/thesis.pdf dist/introduction.pdf
	echo "OK"
	
clean-dist:
	$(RM) dist/*.aux
	$(RM) dist/*.log
	$(RM) dist/*.toc
	
clean: clean-dist
	$(RM) dist/*.pdf
	
clean-all:
	$(RM) dist/**
	
.PHONY: clean clean-dist
