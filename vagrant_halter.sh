#!/bin/bash

#color
BS="\033[1m";
BF="\033[0m";
RED="\e[31m";
GREEN="\e[32m";

print () {
  patterns=();
  patterns+=("\(%bs\)");
  patterns+=("\(%bf\)");

  replace=();
  replace+=($BS);
  replace+=($BF);

  message=$1;
  counter=0;
  for pattern in ${patterns[@]}; do
    close=${replace[$counter]}$2;
    message=${message//$pattern/$close};
    counter=$[$counter+1];
  done

  if [[ $2 ]]; then
    message="$2$message$BF";
  fi

  echo -e $message;
}

VAGRANT=`vagrant global-status | grep running`

vagrant_halter() {
  IFS=$'\n' read -d '' -r -a  vagrantArray <<< "$VAGRANT"

  for item in "${vagrantArray[@]}"; do
    IFS=' ' read -d '' -r -a  itemArray <<< "$item"
    cd "${itemArray[4]}"
    print "Halting (%bs)${itemArray[4]}(%bf)." $GREEN;
    vagrant halt "${itemArray[0]}"
  done
}

if [ "$VAGRANT" == "" ]; then
 print "there is no running VM." $GREEN;
 print "bye, have good day ;)" $GREEN;
 exit
else
 vagrant_halter "$VAGRANT"
fi
