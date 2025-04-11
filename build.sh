TARGET=target
TEXFILE=paper
BIB=my.bib

rm -r $TARGET
mkdir $TARGET
cd $TARGET

cp -r ../src/* .

pdflatex $TEXFILE
bibtex $TEXFILE
pdflatex $TEXTILE
pdflatex $TEXFILE

mv paper.pdf ..