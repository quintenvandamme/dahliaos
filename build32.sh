#!/bin/bash

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="build.sh"
TITLE="build32.sh"
MENU="Choose build:"

OPTIONS=(1 "200804 32bit")

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
            mkdir ~/builddahlia32
            mkdir ~/builddahlia32/boot
            cd ~/builddahlia32
            git clone https://github.com/HexaOneOfficial/dahliaos.git 
            cd
            cp ~/builddahlia32/dahliaos/build/200804|32/ISOLINUX/grub/ISOLINUX.zip ~/builddahlia32
            cp ~/builddahlia32/dahliaos/build/200804|32/base/grub/grub32.zip ~/builddahlia32/boot
            cp ~/builddahlia32/dahliaos/build/200804|32/base/grub/MD5SUMS ~/builddahlia32     
            cp ~/builddahlia32/dahliaos/build/200804|32/base/grub/grub32.zip ~/builddahlia32/boot
            cp ~/builddahlia32/dahliaos/build/200804|32/kernel/grub/default/compiled/bzImage ~/builddahlia32/boot
            unzip ISOLINUX.zip
            rm ISOLINUX.zip
            cd
            cd ~/builddahlia32/boot
            unzip grub32.zip
            rm grub32.zip
            wget https://github.com/HexaOneOfficial/dahliaos/releases/download/200804/initrd
            cd
            sudo rm ~/builddahlia32/dahliaos
            ;;
esac
