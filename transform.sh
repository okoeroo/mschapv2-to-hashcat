#!/bin/bash

read -p "username:  " USERNAME
read -p "challenge: " CHALLENGE
read -p "response:  " RESPONSE

HASHCAT_FMT="${USERNAME}::::${RESPONSE}:${CHALLENGE}"

echo "Proposed hashcat oneliner:"
echo
echo "Straight:"
echo "hashcat -m 5500 -a 0 ${HASHCAT_FMT}" example.dict
echo
echo "Brute force:"
echo "hashcat -m 5500 -a 3 ${HASHCAT_FMT}"

