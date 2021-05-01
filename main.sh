#!/bin/bash



main() {
  clear
  pyfiglet Phone Book
  echo '========================= MAIN ========================='
  echo ''
  echo '  [1]. Add Phone Number '
  echo '  [2]. Show All Phone Number '
  echo '  [3]. Search In Phone Number '
  echo ''
  echo '  [0]. Exit Program '
  echo ''
  echo -n ' >> Enter Number Of Main Items [0 ~ 3] : '
  read -r mode

  if [ "$mode" -eq 1 ]; then
    add_func

  elif [ "$mode" -eq 2 ]; then
    show_func

  elif [ "$mode" -eq 3 ]; then
    search_func

  elif [ "$mode" -eq 0 ]; then
    exit_func

  else
    error_func

  fi
}

main
