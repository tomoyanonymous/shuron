PANDOCOPTION =markdown+hard_line_breaks+footnotes+pipe_tables+link_attributes+header_attributes+implicit_figures+yaml_metadata_block-auto_identifiers --top-level-division=chapter --filter pandoc-fignos

DATADIR := /Users/Tomoya/Kyudai/Shuron

LATEX_TEMPLATE := templates/shuron_template.tex
LATEX_FILE := document

IMAGES=$(wildcard img/*.jpg)
IMAGES+=$(wildcard img/*.png)
IMAGES+=$(wildcard img/*.svg)



SEDOPTION= -e 's!\\includegraphics{!\\includegraphics[width=\\columnwidth]{!g'

# SEDOPTION+= -e 's!{../img!{img!g'
# SEDOPTION+= -e 's!.svg!.svg.pdf!g'
SEDOPTION+= -e 's!.png!.pdf!g'
SEDOPTION+= -e 's!.jpg!.pdf!g'
# SEDOPTION+= -e 's!.jpeg!.jpeg.pdf!g'
SEDOPTION+= -e 's!.JPG!.pdf!g'
# SEDOPTION+= -e 's!.JPEG!.JPEG.pdf!g'
SEDOPTION+= -e 's!%\\centering!\\centering!g'
# SEDOPTION+= -e 's/\\begin{longtable}/\\begin{center}\\begin{supertabular}/g'
# SEDOPTION+= -e 's/\\endhead/ /g'
# SEDOPTION+= -e 's/\\end{longtable}/\\end{supertabular}\\end{center}/g'
# SEDOPTION+= -e 's/\\autocites\[\r\]{\(.*\)}{\(.*\)}/\\cite{\1,\2}/g'
SEDOPTION += -e 's!width=1\\textwidth,height=\\textheight!width=1.00000\\textwidth!g'
SEDOPTION+= -e 's/\(\\begin{figure}\\centering\\includegraphics\[width=1.00000\\textwidth\]\)\(.*\)\(\\end{figure}\)/\\begin{figure*}\[thbp\]\\centering\\includegraphics\[width=1.00000\\textwidth\]\2\\end{figure*}/g'
SEDOPTION+= -e 's/\begin{figure}/\begin{figure}[thbp]/g'
# SEDOPTION+= -e 's/\end{figure}/\end{figure*}/g'
# |sed '/begin{figure}/{N;N;N;N;s/\n//g;}'

PDFS := $(shell find img -name *.jpg -or -name *.png|sed -e 's/jpg/pdf/g' -e 's/png/pdf/g')

all:latexmk

%.pdf :%.jpg
	convert $< $@
%.pdf :%.png
	convert $< $@
image: $(PDFS)
	echo $<


md:md/document.md templates/*
	pandoc md/document.md -f $(PANDOCOPTION) --to=latex --biblatex --data-dir=$(DATADIR) --template=$(LATEX_TEMPLATE) | sed '/begin{figure}/{N;N;N;N;N;N;s/\n//g;}' | sed $(SEDOPTION) > tex/$(LATEX_FILE).tex

appendix:md/appendix*
	find md -name appendix* |xargs -IXXX sh -c 'F=XXX;FILENAME=$${F##*/} ;pandoc XXX -o tex/$${FILENAME%.*}.tex'

docx:md/document.md
	pandoc md/document.md -f $(PANDOCOPTION) --data-dir=$(DATADIR) --to=docx > docx/document.docx

latexmk:md tex/myreference.bib appendix image
	latexmk -f  -cd tex/$(LATEX_FILE).tex

debug:md
		latexmk -f --shell-escape -cd tex/$(LATEX_FILE).tex

clean:
	rm -rf img/*.pdf
	latexmk -cd -C tex/$(LATEX_FILE).tex
