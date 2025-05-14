TARGET=target
TEXFILE=paper
BIB=my.bib

rm -r $TARGET
mkdir $TARGET
cd $TARGET

cp -r ../src/* .

pdflatex -shell-escape $TEXFILE
bibtex $TEXFILE
pdflatex -shell-escape $TEXTILE
pdflatex -shell-escape $TEXFILE

mv paper.pdf ..