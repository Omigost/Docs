# Omigost Project :taco:

[![Build Status](https://travis-ci.org/Omigost/Docs.svg?branch=master)](https://travis-ci.org/Omigost/Docs)

## Brief

This repository contains documents for the *Omigost Optimization Tool Project*.

The compiled documents can be found in /dist directory.

## Code structure

The brief description fo the documents:
* thesisclass.cls - The [official template for thesis for Faculty of Mathematics, Informatics and Mechanics at Univeristy of Warsaw](https://www.mimuw.edu.pl/wzor-pracy-magisterskiej-i-licencjackiej)
* thesis.tex - The thesis document that was the part of the project development
* abstract.tex - Brief abstract of the project
* introduction.tex - The project description paragraph 

## Compilation to pdf

To compile the sources you must have the following tools installed locally:
* Some Latex distribution with pdflatex tool
* GNU Make toolkit

Clone the repo and execute:
```bash
	$ make all
```

The documents will appear in the /dist directory.

MIT License, 2018

- Michał Balcerzak
- Michał Ołtarzewski
- Piotr Styczyński
- Gor Safaryn
