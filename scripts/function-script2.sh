#!/bin/bash

fileOps(){
     echo "Enter the file name"
     read FNAME
  if [ -f "$FNAME" ]; then
     echo "File is already present, hence printing the content"
     cat $FNAME
    else
      echo "File with the given name is not present, hence creating a new file"
     touch $FNAME
   fi
}
fileOps

