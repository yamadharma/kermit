ALLSUBDIRS=
BIBDIR=bib
HOMETEXMF=.:$(HOMETEXMF)

all: dvi

dvi:
	latex default
	./bin/rubibtex.cp1251 default
	./bin/fixbbl.py default.bbl
	latex default
	latex default


ps: default.dvi
	dvips default.dvi -o default.ps

pdf: default.dvi
	dvipdfm -p a4 -z 9 -r 600 -o default.pdf default.dvi
#	ps2pdf14 default.pdf


clean:
	-rm -f *.{log,toc,tac,aux,dvi,ps,bbl,blg,tmp}
	for i in $(ALLSUBDIRS); do \
	  (cd $$i; make clean) || exit 1; \
	done

