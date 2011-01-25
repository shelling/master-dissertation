

EXCLUDED_EXTENSION := log aux pdf toc

.PHONY: all clean

all:
	xelatex main.tex
	makeindex main.idx
	xelatex main.tex

clean:
	rm $(foreach ext, $(EXCLUDED_EXTENSION), $(shell find . -name \*.$(ext)))
