# Name			: Makefile
# Created		: Oct 18, 2018
# Description	: Make file for creating latex document.
# Author		: Lento Manickathan <lento.manickathan@gmail.com>

# Filename 
FILE 	 = thesis

# Tools
LATEX 	 = latex
PDFLATEX = pdflatex -synctex=1 -interaction=nonstopmode
#PDFLATEX = pdflatex -shell-escape
BIBTEX   = biber
MKINDEX  = makeindex

# Default document compiler
CC 		 = $(PDFLATEX)

# Find the files
#TEXFILES = $(shell find . -type f -iname '*.tex') 

.PHONY: fast index bib all view final clean

fast:
	@echo "------------------------------------------------------------------"
	@echo "------------------------------------------------------------------"
	@echo "-----------------  F A S T    C O M P I L I N G  -----------------"
	@echo "------------------------------------------------------------------"
	@echo "------------------------------------------------------------------"
	$(CC) $(FILE).tex
	@echo "------------------------  D O N E  -------------------------------"
	@echo ""
	@echo ""

index: fast
	@echo "------------------------------------------------------------------"
	@echo "------------------------------------------------------------------"
	@echo "------------------  M A K I N G    I N D E X  --------------------"
	@echo "------------------------------------------------------------------"
	@echo "------------------------------------------------------------------"
	$(MKINDEX) $(FILE).idx
	$(MKINDEX) $(FILE).idx
	@echo "------------------------  D O N E  -------------------------------"
	@echo ""
	@echo ""

bib: fast
	@echo "------------------------------------------------------------------"
	@echo "------------------------------------------------------------------"
	@echo "------------  M A K I N G    B I B L I O G R A P H Y  ------------"
	@echo "------------------------------------------------------------------"
	@echo "------------------------------------------------------------------"
	$(BIBTEX) $(FILE).bcf
	$(BIBTEX) $(FILE).bcf
	@echo "------------------------  D O N E  -------------------------------"
	@echo ""
	@echo ""

all: bib index
	@echo "------------------------------------------------------------------"
	@echo "------------------------------------------------------------------"
	@echo "-------- C O M P I L I N G    F U L L    D O C U M E N T ---------"
	@echo "------------------------------------------------------------------"
	@echo "------------------------------------------------------------------"
	$(CC) $(FILE).tex
	$(CC) $(FILE).tex
	@echo "------------------------  D O N E  -------------------------------"
	@echo ""
	@echo ""

view:
	open $(FILE).pdf

wordcount:
	echo `git diff --word-diff=porcelain | grep -e '^+[^+]' | wc -m`
	echo `git diff --word-diff=porcelain | grep -e '^-[^-]' | wc -m`
	

final: all clean

clean:
	@echo "------------------------------------------------------------------"
	@echo "------------------------------------------------------------------"
	@echo "--------------------  C L E A N I N G    U P  --------------------"
	@echo "------------------------------------------------------------------"
	@echo "------------------------------------------------------------------"
	rm -f $(FILE).synctex.gz $(FILE).ilg $(FILE).ind $(FILE)-blx.bib $(FILE).bbl $(FILE).blg $(FILE).run.xml
	rm -f $(FILE).aux $(FILE).aux.* $(FILE).idx $(FILE).log $(FILE).out $(FILE).toc
	rm -f appendix/*.aux chapters/*/*.aux chapters/*/*.log frontbackmatter/*.aux
	rm -f appendix/*.log    
	rm -f $(FILE).blf.* $(FILE).bcf
	@echo "------------------------  D O N E  -------------------------------"
	@echo ""
	@echo ""

doc:
	latex2rtf $(FILE).tex
