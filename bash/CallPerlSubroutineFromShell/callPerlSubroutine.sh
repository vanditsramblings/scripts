#/bin/bash

#------------------------------------------------------------
#Read file line by line
#Usage 
#    "showUsage fileName"
#------------------------------------------------------------
function showUsage() {
  FILE_NAME=$1
  LINE_COUNT=1;
  while read -r line
  do
    echo "Line $LINE_COUNT=$line"
	LINE_COUNT=LINE_COUNT+1
  done < "$FILE_NAME"
}




#------------------------------------------------------------
#Call a perl subroutine from bash
#------------------------------------------------------------
function callPerlSubroutine(){
  RESULT=$(perl -MMyModule -e "MyModule::mySubroutine('$ARG_ONE','$ARG_Two');")
  echo $RESULT
}