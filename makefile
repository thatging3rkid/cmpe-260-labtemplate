# Makefile for a CMPE-260 lab report
#
# author: Connor Henley, @thatging3rkid

# latex compiler defines
LATEXC = latexmk
LATEXC_FLAGS = -pdf

RM_COMMAND = rm -f

# rule for building all pdfs
all: lab.pdf

# rule for building the (unofficial) resume pdf
lab.pdf: lab.tex
	$(LATEXC) lab.tex $(LATEXC_FLAGS)

# rule to run spell check
spell:
	aspell --lang=en --mode=tex check lab.tex

# rule to clean up the directory
clean:
	$(RM_COMMAND) *.aux
	$(RM_COMMAND) *.log
	$(RM_COMMAND) *.bbl
	$(RM_COMMAND) *.blg
