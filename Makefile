# -------------------------------------------------------------------
# for creating the handout
# -------------------------------------------------------------------

sol:
	pdflatex mp2-sol ; pdflatex mp2-sol

pdf:
	pdflatex mp2 ; pdflatex mp2

handin:
	zip -r mp2.zip sat.mlw test.mlw sat/
	@echo "Don't forget to submit mp2-sol.pdf separately to Gradescope!"

handout:
	pdflatex mp2 ; pdflatex mp2
	zip -r mp2.zip Makefile mp2.pdf mp2.tex mp2-sol.tex lecnotes.sty hw.sty fp-macros.tex sat.mlw test.mlw
	mv mp2.zip mp2.pdf ../../www/assignments/

clean:
	(rm -rf *.aux *.bbl *.blg *.glg *.glo *.gls *.ilg *.ist *.lof *.log *.lot *.nlo *.nls *.out *.toc *.synctex.gz)

