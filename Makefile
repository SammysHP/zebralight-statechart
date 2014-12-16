BASENAME = zebralight_statechart

all: pdf

pdf:
	latexmk -pdf $(BASENAME)

live:
	latexmk -pdf -pvc $(BASENAME)

clean:
	latexmk -c $(BASENAME)

clean-all: clean
	latexmk -C $(BASENAME)
