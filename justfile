nix:
    nix-shell --command "just build"

build: clean consolidate
    pdflatex main.tex
    biber main
    pdflatex main.tex
    biber main
    pdflatex main.tex

consolidate:
    -rm refs.bib
    cat citations/* > refs.bib

clean:
    -rm *.aux *.bbl *.bcf *.blg *.log *.out
