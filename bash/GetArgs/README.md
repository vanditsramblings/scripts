This simple subroutine enables you to pass command line arguments to the script.
Features-----------------
--Supports both = and blank space assignemnt
--Supports flag assignment , single and multiple args
--SUpports both long and short flags/options
--It is purely native and does not depend on any external library

Usage :
      getArgs.sh -f -a SampleValue1 -m Mval1 -m Mval2
                          or
      getArgs.sh --flag --arg SampleValue1 --multiple Mval1 --multiple Mval2
                          or
      getArgs.sh -f -a=SampleValue1 --multiple=Mval1 -m Mval2



Note : Further apply validation for mandatory/optional args
