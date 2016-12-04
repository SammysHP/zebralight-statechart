ROOTTEX = zebralight_statechart

.PHONY: all pdf png live clean clean-all

all: pdf

pdf:
	latexmk -pdf $(ROOTTEX)

png: pdf
	convert -density 500 $(ROOTTEX).pdf -background white -flatten -resize 20% -sharpen 0x.6 $(ROOTTEX).png
	optipng $(ROOTTEX).png

live:
	latexmk -pdf -pvc $(ROOTTEX)

clean:
	latexmk -c $(ROOTTEX)

clean-all: clean
	latexmk -C $(ROOTTEX)
	rm -f $(ROOTTEX).png
