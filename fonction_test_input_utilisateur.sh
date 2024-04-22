#! /bin/bash


function verifier_lettre_dans_mot() {
lettre_proposee=$1
if  echo "$word" | grep -q "$lettre_proposee"
then
	echo "La lettre "$lettre_proposee" est présente dans le mot"
	bonnes_lettres=$(./stocker-lettres.sh "$lettre_proposee" "$bonnes_lettres")
else
	echo "La lettre "$lettre_proposee" n'est pas présente dans le mot"
	mauvaise_lettres=$(./stocker-lettres.sh "$lettre_proposee" "$mauvaises_lettres")

fi
}





function verifier_mot() {
mot_proposee=$1
if test "$word" = "$mot_proposee"
then
        echo "Le mot "$mot_proposee" est bon"
        ./stocker-good-mot.sh "$mot_proposee"
else
        echo "Le mot: "$mot_proposee" n'est pas le bon"
        ./stocker-wrong-mot.sh "$mot_proposee"

fi
}


input=$1
if [ ${#input} -eq  1 ]
then 
	verifier_lettre_dans_mot "$input"
else
	verifier_mot "$input"
fi
