clean :
	rm -f *.bbl *.log *.aux *.blg 

qubib :
	latex qubib
	bibtex qubib
	latex qubib
	latex qubib
	bibtex qubib
	latex qubib
	latex qubib

qubib-html :
	/usr/local/bibtex2html-1.69/bibtex2html -a -s qubib -noheader -nofooter --dl qubib.bib
