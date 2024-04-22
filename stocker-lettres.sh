#! /usr/bin/env bash 

#Fontion stocker lettres déjà utilisées

LETTRE=$1
LISTE=$2
stringContain() { case $1 in *$2* ) return 0;; *) return 1;; esac;} 



stocker-lettres(){
LETTRE=$1
LISTE=$2


if ! stringContain $LETTRE $LISTE
then 

        LISTE="$LISTE""$LETTRE"
fi      



echo $LISTE
}



stocker-lettres $LETTRE $LISTE
