#! /usr/bin/env bash


#Variable des mots et lettres déjà utilisés
WORD="TESTABC"
LISTE_FAUSSES_LETTRES=""
LISTE_BONNES_LETTRES="ABC"
LISTE_MAUVAIS_MOTS="Mot2"


stringContain() { case $1 in *$2* ) return 0;; *) return 1;; esac;} 



#Fontion stocker lettres déjà utilisées

stocker-lettres(){
LETTRE=$1
LISTE=$2


if ! stringContain $LETTRE $LISTE
then 
	LISTE="$LISTE""$LETTRE"
fi	

echo $LISTE
}

stocker-lettresFAUX(){
LETTRE=$1
LISTE=$2
NOT_HERE=0

for (( i=0; i<${#LISTE}; i++ ))
do
        if [ "${LETTRE:$i:1}" = "$LETTRE" ]
        then
                break 
        else 
                NOT_HERE=1
        fi
done

if [ $NOT_HERE -eq 1 ]
        then 
                LISTE="$LISTE""$LETTRE"
fi

echo "$LISTE"
}


#Stocker mot 

stocker-mots(){
MOT=$1
LISTE=$2 

HERE=0

for element in "${MAUVAIS_MOTS}"
do
        if [ "$MOT" = "$element" ]
        then
                HERE=1
        fi
done

if [ $HERE -eq 0 ]
        then 
                LISTE["${#LISTE[*]}"]=$MOT
fi
}



#Fonction Afficher mot et lettre déjà utilisé

afficher-wrong-input(){
echo WRONG : "${LIST_WRONG_INPUT[*]}"
}

afficher-liste(){
LISTE=$1
echo Liste : "${LISTE[*]}"
}

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


#Test
#read -p "Ajouter un mot ou une lettre " input
#stocker-good-input $input 

#afficher-lists

#afficher-lettres


#LISTE_BONNES_LETTRES=$(stocker-lettres "E" $LISTE_BONNES_LETTRES)
#afficher-liste $LISTE_BONNES_LETTRES
#stocker-mots "Mot2" $LISTE_MAUVAIS_MOTS
#afficher-liste $LISTE_MAUVAIS_MOTS
stocker-lettres "E" "$LISTE_BONNES_LETTRES"
#afficher-liste $LISTE_BONNES_LETTRES

