#! /bin/bash
if test "$1" = ""
	then


	nbrligne="$(wc -l /usr/share/dict/french | cut -f1 -d" ")"
	word="aaaaaaaaaaaaaaaaaaaaaaaaaaaa"
	while test ${#word} -gt 7	
	do
		lignealeatoire="$(shuf -i 0-$nbrligne -n 1)"
		mot="$( head -n $lignealeatoire /usr/share/dict/french | tail -n 1)"
		word="$(echo "$mot" | iconv -f utf8 -t ascii//TRANSLIT)"
	done


else
	nbrligne="$(wc -l dico_usr.txt | cut -f1 -d" ")"
	lignealeatoire="$(shuf -i 0-$nbrligne -n 1)"
	mot="$( head -n $lignealeatoire dico_usr.txt | tail -n 1)"
	word="$(echo "$mot" | iconv -f utf8 -t ascii//TRANSLIT)"
fi

echo "$word"

 
