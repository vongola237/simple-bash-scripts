#!/bin/bash

# Fonction pour installer les packages nécessaires
install_packages() {
  sudo apt update && sudo apt install -y curl jq zenity
}

# while-read: read lines from a file
count=0
while read; do
	printf "%d %s\n" $REPLY
	count=$(expr $count + 1)
done <$1
