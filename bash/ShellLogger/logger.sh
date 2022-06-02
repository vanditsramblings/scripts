#/bin/bash

#------------------------------------------------------------
#Logging utility with color coded messages
#
#------------------------------------------------------------

LOG_COL_BLACK='\033[0;30m'
LOG_COL_RED='\033[0;31m'
LOG_COL_GREEN='\033[0;32m'
LOG_COL_YELLOW='\033[0;33m'
LOG_COL_BLUE='\033[0;34m'
LOG_COL_PURPLE='\033[0;35m'
LOG_COL_CYAN='\033[0;36m'



function log_info() {
  TIMESTAMP=`date +%Y-%m-%d_%H-%M-%S`
  printf "${LOG_COL_BLUE}INFO${NC}::::${LOG_COL_PURPLE}$TIMESTAMP${NC}:::${LOG_COL_GREEN}$1\n"
}

function log_debug() {
  TIMESTAMP=`date +%Y-%m-%d_%H-%M-%S`
  printf "${LOG_COL_BLUE}DEBUG${NC}:::${LOG_COL_PURPLE}$TIMESTAMP${NC}:::${LOG_COL_YELLOW}$1\n"
}

function log_error() {
  TIMESTAMP=`date +%Y-%m-%d_%H-%M-%S`
  printf "${LOG_COL_BLUE}ERROR${NC}:::${LOG_COL_PURPLE}$TIMESTAMP${NC}:::${LOG_COL_RED}$1\n"
}
