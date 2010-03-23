#!/bin/sh

if [ -z "$1" ]
then
	echo "usage ./createblatt.sh Blattnummer"
fi

if [ "$1" -lt 10 ]
then
	BLATTNR="0$1"
else
	BLATTNR="$1"
fi

mkdir -v "Blatt$BLATTNR"
cp -v BlattSkel/* "Blatt$BLATTNR"

cd "Blatt$BLATTNR"
sed -i "s/BLATTSPACE/Blatt $1/" blatt.tex
sed -i "s/BLATTNOSPACE/blatt$1/" Makefile
mv -v blatt.tex "blatt$1.tex"
echo "yuhu fertig, wen alles pass mit svn add Blatt$BLATTNR zum repository hinzufügen"
