.PHONY: all
all: index.pdf index.html

index.pdf: index.qmd _quarto.yml
	quarto render index.qmd --to beamer-pdf

index.html: index.qmd _quarto.yml
	quarto render index.qmd --to revealjs

.PHONY: clean
clean:
	rm -f index.pdf index.html

.PHONY: open
open:
	open index.html
