BUILDDIR=./build

# target for main pdf files
main.pdf:  main.tex
	mkdir -p $(BUILDDIR)
	latexmk -bibtex -interaction=nonstopmode -shell-escape -pdf -outdir=$(BUILDDIR) $<

clean:
	rm -rf $(BUILDDIR)

build: clean graphs main.pdf

.PHONY: build clean graphs
.DEFAULT: build
