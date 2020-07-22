FILE=qubib
NEEDEDFILES=qubib.bib qubib.bst

qubib-html : $(FILE).bib $(NEEDEDFILE)
	/usr/local/bin/bibtex2html -dl -a -noheader -nofooter -s qubib.bst qubib.bib

dvi : $(FILE).dvi

ps : $(FILE).ps

pdf : $(FILE).pdf

tar : $(FILE).pdf $(FILE).dvi $(FILE).ps
	tar cvzf $(FILE).tgz $(FILE).tex $(NEEDEDFILES) $(FILE).dvi $(FILE).ps $(FILE).pdf makefile


%.dvi : %.tex $(NEEDEDFILES)
	latex $*.tex
	latex $*.tex
	bibtex $*
	latex $*.tex
	latex $*.tex

%.ps : %.dvi $(NEEDEDFILES)
	dvips -t letter -o $*.ps $*.dvi

%.pdf : %.tex $(NEEDEDFILES)
	pdflatex $*.tex
	pdflatex $*.tex
	bibtex $*
	pdflatex $*.tex
	pdflatex $*.tex

clean :
	rm -f *.log *.aux *.toc *.inx *~ *.out *.brf *.bbl *.blg *.end *.waux *.snm *.nav

