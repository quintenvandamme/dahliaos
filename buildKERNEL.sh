#!/bin/bash
# Bash Menu Script Example

PS3='Please select a kernel: '
options=("Default 5.6.15" "5.7.9" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Default 5.6.15")
            cp ~/builddahliagrub/dahliaos/kernel/bzImage ~/builddahliagrub/dahlia
            ;;
        "5.7.9")
            cp ~/builddahliagrub/dahliaos/kernel/5.7.9/bzImage ~/builddahliagrub/dahlia
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
