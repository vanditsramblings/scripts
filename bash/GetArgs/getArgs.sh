#/bin/bash

#---------------------------------------------------------------------------------
#This simple subroutine enables you to pass command line arguments to the script.
#Features-----------------
#--Supports both = and blank space assignemnt
#--Supports flag assignment , single and multiple args
#--SUpports both long and short flags/options
#--It is purely native and does not depend on any external library
#
#Usage :
#      getArgs.sh -f -a SampleValue1 -m Mval1 -m Mval2
#                          or
#      getArgs.sh --flag --arg SampleValue1 --multiple Mval1 --multiple Mval2
#                          or
#      getArgs.sh -f -a=SampleValue1 --multiple=Mval1 -m Mval2
#---------------------------------------------------------------------------------

#Intialization-------------------
ARG="na" 			#Passed using [-a] or [--arg] option
FLAG=0; 			#Passed using [-f] or [--flag] flag
ARG_MULTIPLE="na" 	#Passed using [-m] or [--multiple] option
#---------------------------------------------------------------------------------

#Counter for multiple args
ARG_MULTIPLE_COUNT=0


while [[ $# -gt 0 ]]; do
    key="$1"
    case "$key" in
        -a|--arg)
        shift 
        ARG="$1"
        ;;
        -a=*|--arg=*)
        ARG="${key#*=}"
        ;;
		-f|--flag)
        FLAG=1
		#Do not shift in case of a flag
        ;;
		-m|--multiple)
		shift
		ARG_MULTIPLE[ARG_MULTIPLE_COUNT]=$1
		ARG_MULTIPLE_COUNT=$ARG_MULTIPLE_COUNT+1
        ;;
		-m=*|--multiple=*)
		ARG_MULTIPLE[ARG_MULTIPLE_COUNT]=${key#*=}
		ARG_MULTIPLE_COUNT=$ARG_MULTIPLE_COUNT+1
        ;;
		*)
        echo "Invalid Option '$key'"
        ;;
    esac
    shift
done


echo ---------------------------------------------------------
echo "Passed Values:"
echo "ARG=$ARG"
echo "FLAG=$FLAG"
echo "MULTIPLE ARGS="
for i in ${ARG_MULTIPLE[@]}
do
  echo $i
done 
echo ---------------------------------------------------------