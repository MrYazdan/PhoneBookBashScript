#!/bin/bash

main() {
  clear
  pyfiglet Phone Book
  echo ''
  echo '================= MAIN ================='
  echo ''
  echo '  1. Add Phone Number '
  echo '  2. Show All Phone Number '
  echo '  0. Exit Program '
  echo ''
  echo -n ' >> '
  read -r mode

  if [ "$mode" -eq 1 ]; then
    pass

  elif [ "$mode" -eq 2 ]; then
    pass

  elif [ "$mode" -eq 3 ]; then
    pass

  else
    pass

  fi
}

main
