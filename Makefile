.PHONY: all show clean ps
PROJECT=math
ps: $(PROJECT).tex
	latex $(PROJECT).tex
	latex $(PROJECT).tex
	dvips $(PROJECT).dvi

pdf: ps
	ps2pdf $(PROJECT).ps

all: pdf clean

clean:
	rm -f *.aux *.dvi *.toc *.log *.ps *~

show: ps
	gv $(PROJECT).ps

ed:
	emacs *.tex Makefile &
