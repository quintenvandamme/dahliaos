#!/bin/bash

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="buildKERNEL"
TITLE="buildKERNEL"
MENU="Choose your kernel:"

OPTIONS=(1 "Default 5.6.15"
         2 "5.7.9")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            cp ~/builddahliagrub/dahliaos/kernel/bzImage ~/builddahliagrub/dahlia
            ;;
        2)
            cp ~/builddahliagrub/dahliaos/kernel/5.7.9/bzImage ~/builddahliagrub/dahlia
            ;;
        
esac
