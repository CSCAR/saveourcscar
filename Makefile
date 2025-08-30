.PHONY: all
all: index.pdf index.html onepage

index.pdf: index.qmd _quarto.yml
	quarto render index.qmd --to beamer-pdf --output CSCAR_slide_deck.pdf

index.html: index.qmd _quarto.yml
	quarto render index.qmd --to revealjs

.PHONY: onepage
	cp CSCAR_in_one_page.docx docs/

.PHONY: clean
clean:
	rm -f index.pdf index.html

.PHONY: open
open:
	open index.html
