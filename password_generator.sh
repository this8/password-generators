#!/bin/bash

readonly lower_case="bcdfghjklmnpqrstvwxyz"
readonly upper_case="BCDFGHJKLMNPQRSTVWXYZ"
readonly vowels="aAeEiIoOuU"
readonly numbers="0123456789"
readonly symbols="\`-=[]\;,./~!@#$%^&*()_+{}|:<>?"
readonly characters="${lower_case}${upper_case}${vowels}${numbers}${symbols}"

function len() {
    echo -n "$1" | wc -c
}

function randInt() {
    local min=$1
    local max=$2
    
    echo $RANDOM % "$max" + "$min"
}

function randomFromString() {
    local selectionString=$1
    local random
    
    random=$(randInt 0 "$(len "$selectionString")")
    echo "${selectionString:$random:1}"
}

function randomCharacter() {
    randomFromString "$characters"
}

function randomDigit() {
    randomFromString "$numbers"
}

function randomPassword() {
    local length_for_password=$1
    local password=""
    
    for (( i=1; i<=length_for_password; i++ ))
    do
        password+=$(randomCharacter)
    done
    
    echo "$password"
}

function readablePassword() {
    local password=""
    local letters="${lower_case}${upper_case}"
    
    for i in {1..3}
    do
        password+=$(randomFromString $letters)
        password+=$(randomFromString $letters)
        password+=$(randomFromString "$( (("$i"%2)) && echo "$symbols" || echo "$numbers" )")
    done

    echo "$password"
}
