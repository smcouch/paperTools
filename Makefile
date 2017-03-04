NAME=ms
TARGET=$(NAME).pdf
SOURCE=$(NAME).tex
AUX=$(NAME).aux

#FIGS=$(wildcard fig/*.pdf)
#BIBS=$(shell find bibliography/ -name \*.bib)
#PLTS=$(shell find fig -name \*.py -perm +111)

JUNK=.aux .bbl .blg .dvi .log .nav .out .ps .snm .tex.backup .toc Notes.bib

all: $(TARGET)

$(TARGET): $(SOURCE) $(FIGS) .FORCE
	@pdflatex $(SOURCE)
	@bibtex $(NAME)
	@pdflatex $(SOURCE)
	@pdflatex $(SOURCE)

bib: $(SOURCE) $(FIGS) $(BIBS) .FORCE
	@pdflatex $(SOURCE)
	@bibtool -x $(AUX) -i $(PTOOLSDIR)/masterDB.bib -o $(NAME).bib
	@bibtex $(NAME)
	@pdflatex $(SOURCE)
	@pdflatex $(SOURCE)

clean:
	@for ext in $(JUNK); do\
	    rm -f $(NAME)$$ext;\
	done

quick:  $(SOURCE) $(FIGS) $(BIBS) .FORCE
	@pdflatex $(SOURCE)

.FORCE:
