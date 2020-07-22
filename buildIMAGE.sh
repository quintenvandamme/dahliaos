#!/bin/bash

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="buildIMAGE"
TITLE="buildIMAGE"
MENU="Choose build image:"

OPTIONS=(1 "Latest 200630_2")

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
            cd
            wget "https://github.com/HexaOneOfficial/dahliaos/releases/download/200630_2/initrd"
            cp ~/initrd ~/builddahliagrub/dahlia
            ;;
        
esac
