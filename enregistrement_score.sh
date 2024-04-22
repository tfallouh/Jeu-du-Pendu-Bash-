#! /bin/bash

enregistrer_score (){
vie_restante=$1
time=$2
difficulte=$3

temps_formatte=$(date -d "$time" -u +%H:%M:%S)

if [ ! -f "scores.txt" ]; then
	touch "scores.txt"
	echo "Vie(s) restante(s) | Temps pris | Difficulté" >> "scores.txt"
    fi
    echo "$vie_restante | $temps_formatte | $difficulte" >> "scores.txt"   #AJout du score dans le fichier
} 

enregistrer_score $1 $2 $3
