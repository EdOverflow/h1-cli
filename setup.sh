#!/bin/bash

echo "Installing dependencies."

sudo apt-get install xclip
sudo apt-get install jq
git clone https://github.com/fransr/bountyplz.git
ln -fs "$(pwd)/bountyplz" /usr/local/bin/bountyplz

echo "Place .env with HACKERONE_USERNAME and HACKERONE_PASSWORD next to the binary."
read -p "Your HackerOne username: "
echo "HACKERONE_USERNAME=$REPLY" > "$(pwd)/bountyplz/.env"
read -p "Your HackerOne password: "
echo "HACKERONE_PASSWORD=$REPLY" >> "$(pwd)/bountyplz/.env"

echo "Done installing dependencies."