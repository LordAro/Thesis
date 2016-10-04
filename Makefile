REFERENCE=references.bib
MAIN=main
COMPILER=xelatex

all:
	biber $(MAIN)
	$(COMPILER) --shell-escape $(MAIN)

clean:
	rm -f main.pdf
	rm -f main.aux main.lof main.log main.lol main.lot main.run.xml wordcount.txt
	rm -f main.bbl main.bcf main.blg

