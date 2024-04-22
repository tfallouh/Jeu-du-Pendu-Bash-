#! /usr/bin/env bash 

LISTE=$1

afficher-liste(){
LISTE=$1
echo Liste : "${LISTE[*]}"
}

afficher-liste $LISTE
