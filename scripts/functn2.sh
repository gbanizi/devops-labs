#!/bin/bash

doTask(){
       echo "enter tehe file name to be created"
       read FNAME

      touch $FNAME
      echo "file is created by name $FNAME"
}
doTask
