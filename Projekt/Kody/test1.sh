#!/bin/bash
if [ $1 == "-a" ]; then
date
elif [ $1 == "-b" ]; then
ls
elif [ $1 == "-c" ]; then
whoami
elif [ $1 == "-d" ]; then
mkdir "$2"
elif [ $1 == "-e" ]; then
rm "$2"
elif [ $1 == "-f" ]; then
head -n 10 "$2"
elif [ $1 == "-g" ]; then
tail -n 10 "$2"
elif [ $1 == "-h" ]; then
echo "-a data i godzina\n"
echo "-b pliki w katalogu\n"
elif [ $1 == "-i" ]; then
ls -l|grep "^-" |wc -l
elif [ $1 == "-j" ]; then
ls | grep "\.txt$"
elif [ $1 == "-k" ]; then
echo "wybierz opcje"
echo "1-suma"
echo "2-odczyt"
echo "3-spr"
echo "4-zlicz"
echo "5-wyszukaj"
read a
if [ $a == 1 ]; then
	read b
	suma=0
	for ((i=1;i<=$b;i++)); do
	suma=$(( $suma + $i ))		
	done
echo "$suma"
fi
if [ $a == 2 ]; then
read b
cat $b | rev 
fi
if [ $a == 3 ]; then
read b
if [ -f $b ]; then
echo "plik"
fi
if [ -d $b ]; then
echo "katalog"
fi
fi
if [ $a == 4 ]; then
ls -l | grep "^-" | wc -l
ls -l | grep "^d" | wc -l
fi	
if [ $a == 5 ]; then
read b
ls | grep "^$b*"
fi

fi

