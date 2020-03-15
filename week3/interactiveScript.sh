#!/bin/bash

rtdir=~/CSP2101/

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
