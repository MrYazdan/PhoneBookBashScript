#!/bin/bash

banner_func(){
  clear
  pyfiglet Phone Book
}

exit_func() {
  banner_func
  echo '========================= EXIT ========================='
  echo ''
  echo -n "> Do You Want To Exit ? [y/N] : "
  read -r cmd

  if [ "$cmd" != "${cmd#[Yy]}" ]; then
    main
  else
    banner_func
    echo "Good Bye '~'"
    exit
  fi
}

error_func() {
  banner_func
  echo '======================== ERROR! ========================'
  echo " Your Command Not Found !"
  echo -n " Press Enter For Back To Main ~ "

  main
}

main() {
  banner_func
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
