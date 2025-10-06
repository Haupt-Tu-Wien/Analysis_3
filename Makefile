MAINDOC = ANA_3.tex
PDF = ANA_3.pdf
JOBNAME = $(PDF:.pdf=)

.PHONY: all clean view release

all:
	latexmk -f -pdflua -bibtex $(MAINDOC) -jobname=$(JOBNAME)

clean:
	latexmk -f -pdflua -C $(MAINDOC) -jobname=$(JOBNAME)
	rm -f $(JOBNAME).run.xml
	rm -f Chapter/*.aux

view:
	evince $(PDF) >/dev/null 2>&1 &
