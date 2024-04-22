#! /usr/bin/env bash

#Fonction afficher les lettres du bon mot
#Il nous faut en paramètre 
# $1 : Le mot cherché (en caractère) 
# $2 : Liste des lettres trouvées (en caractère)
afficher-lettres(){

AFFICHAGE=""
WORD=$1
LISTE_BONNES_LETTRES=$2


for (( i=0; i<${#WORD}; i++ ))
do
        HERE=0
        for (( j=0; j<${#LIST_GOOD_INPUT}; j++ ))
        do
                if test "${WORD:$i:1}" == "${LIST_GOOD_INPUT:$j:1}"
                then
                        AFFICHAGE="$AFFICHAGE""${WORD:$i:1}"" "
                        HERE=1  
                fi
       done
        if [ $HERE -eq 0 ]
        then
                AFFICHAGE="$AFFICHAGE""_"" "
        fi

done

echo Etat du mot : "$AFFICHAGE"
echo "Nombre de lettres manquantes : (à implémenter)" 
}

afficher-lettres $1 $2
