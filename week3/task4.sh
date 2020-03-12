#!/bin/bash
#Ask user for the file they would like to access
read -p "Type the name of a folder you would like to access: " folderName 
#Ask user for a secret password
read -p "Please type the secret password: " secretPassword
#Creates directory
mkdir "$folderName"
#Moves to the directory
cd "$folderName"
#prints the secret password into a file called secret.txt
echo > "secret.txt" "$secretPassword"
