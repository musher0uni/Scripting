#!/bin/bash

rtdir=~/CSP2101/

# Ask user to select directiory in CSP2101 folder

while true; do

    echo "AVALIBLE DIRECTORIES IN $rtdir: "
    ls $rtdir

    read -p "Select a directory from the list above: " userFolderName

    if [ -d "${rtdir}${userFolderName}" ]; then # ~/CSP2101/pwords
    
        # echo "The selected directory exists."
        echo "You have requested to see the contents of the $userFolderName directory."

            if [ "$(ls -A ${rtdir}${userFolderName})" ]; then
                # what to do if true
                ls ${rtdir}${userFolderName}
                #echo "Yes, there are files in there."

            else    
                echo "The $userFolderName directory is empty."
            fi
            break


    else
        echo "The directory entered does not exist."
    fi

done

# Request a new password from the user

while true; do

    read -s -p 'Enter a new password for future use: ' selpword
        if ! [ -z "$selpword" ]; then
            echo "Thank you. Password accepted."
            break

        else
            echo "No password provided - please try again."
        fi

done

# Write password to text file in nominated directory
if ! [ -f "${rtdir}${userFolderName}/secret.txt" ]; then
    echo "The file secret.txt does not yet exist. Creating it now..."
    touch ${rtdir}${userFolderName}/secret.txt
    echo "Password now being writtten to file..."
    echo "$selpword" > "${rtdir}${userFolderName}/secret.txt"
    echo "Password has been written to ${rtdir}${userFolderName}/secret.txt"
    cat "${rtdir}${userFolderName}/secret.txt"

else
    echo "The file secret.txt already exists. Password being written to it now..."
    echo "$selpword" >> "${rtdir}${userFolderName}/secret.txt"
    # the double >> makes sure it doesnt overwrite the passwords already in file, single > is used if you want to overwrite what is already in file
    echo "Password has been written to ${rtdir}${userFolderName}/secret.txt"
    cat "${rtdir}${userFolderName}/secret.txt"

fi

exit 0
