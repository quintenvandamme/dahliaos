#!/bin/bash

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="buildKERNEL"
TITLE="buildKERNEL"
MENU="Choose your kernel:"

OPTIONS=(1 "Default 5.6.15"
         2 "latest 5.7.11"
         3 "5.7.10")
         4 "5.7.9"
         5 "rc 5.8.0-rc7")
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
            cd
            wget "https://github.com/HexaOneOfficial/kerneldahlia/releases/download/5.7.11/linux5.7.11.zip"
            cp linux5.7.11zip ~/builddahliagrub/dahlia
            cd ~/builddahliagrub/dahlia
            unzip linux5.7.11.zip
            rm BUILD
            rm COPYING
            rm linux5.7.11.zip
            ;;    
        3)
            cd
            wget "https://github.com/HexaOneOfficial/kerneldahlia/releases/download/5.7.10/bzImage"
            cp ~/bzImage ~/builddahliagrub/dahlia
            ;;
        4)
            cp ~/builddahliagrub/dahliaos/kernel/5.7.9/bzImage ~/builddahliagrub/dahlia
            ;;
        5)
            cd
            wget "https://github.com/HexaOneOfficial/kerneldahlia/releases/download/5.8.0rc7/linux5.8.0-rc7.zip"
            cp linux5.8.0-rc7.zip ~/builddahliagrub/dahlia
            cd ~/builddahliagrub/dahlia
            unzip linux5.8.0-rc7.zip
            rm BUILD
            rm COPYING
            rm linux5.8.0-rc7.zip
            ;;    
esac
