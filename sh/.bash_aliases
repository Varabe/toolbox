#!/bin/bash

# Put me into ~/

alias pf="ps -e | grep $1"
alias clip="xclip -selection clipboard"

alias update-mirrors="sudo pacman-mirrors --fasttrack && sudo pacman -Syyu"
alias clean-cache="sudo pacman -Scc"
alias update="sudo pacman -Syyu"

printf "You can use: \n"
printf "\tpf -> search process id by process name\n"
command -v xclip >/dev/null 2>&1 && { printf "\tclip -> copy stdin into clipboard\n";} # If xclip is available
command -v add-pkexec >/dev/null 2>&1 && { printf "\tadd-pkexec -> Configure a GUI application to be run as root when used with pkexec\n";} # if add-pkexec is available
printf "\tupdate -> update packages\n"
printf "\tupdate-mirrors -> update mirrorlist for fastest mirrors. Do it when you change countries\n"
printf "\tpamac build <aur-package> -> Install a package from aur\n"
