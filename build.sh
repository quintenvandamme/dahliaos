#!/bin/bash

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="build.sh"
TITLE="build.sh"
MENU="Choose build:"

OPTIONS=(1 "200804"
         2 "200630_2")

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
            echo test
            ;;
        2)
            mkdir ~/builddahliagrub
            cd 
            cp -r ~/dahliaos ~/builddahliagrub
            cd ~/builddahliagrub
            mkdir boot
            mkdir dahlia 
            mkdir EFI
            cd ~/builddahliagrub/dahliaos
            chmod +x buildEFI.sh
            chmod +x buildGRUB.sh
            chmod +x buildKERNEL.sh
            chmod +x buildIMAGE.sh
            chmod +x finalize.sh
            cd ~/builddahliagrub/dahliaos/base
            cp ~/builddahliagrub/dahliaos/base/MD5SUMS ~/builddahliagrub/
            cp ~/builddahliagrub/dahliaos/base/README.diskdefines ~/builddahliagrub/
            cp ~/builddahliagrub/dahliaos/base/autorun.ico ~/builddahliagrub/
            cp ~/builddahliagrub/dahliaos/base/autorun.inf ~/builddahliagrub/
            cp ~/builddahliagrub/dahliaos/base/syslinux.cfg ~/builddahliagrub/
            cp ~/builddahliagrub/dahliaos/finalize.sh ~/
            cd ~/
            chmod +x finalize.sh
            cp -r ~/builddahliagrub/dahliaos/BOOT ~/builddahliagrub/EFI
            cp -r ~/builddahliagrub/dahliaos/grub ~/builddahliagrub/boot
            cd 
            cd ~/builddahliagrub/boot/grub/x86_64-efi
            unzip x86_64-efi.zip
            cp ~/builddahliagrub/dahliaos/buildKERNEL.sh ~/
            cp ~/builddahliagrub/dahliaos/buildIMAGE.sh ~/
            cd
            wget "https://github.com/HexaOneOfficial/dahliaos/releases/download/200630_2/initrd"
            cp ~/initrd ~/builddahliagrub/dahlia
            cd
            sudo rm ~/builddahliagrub/boot/grub/x86_64-efi/x86_64-efi.zip
            sudo rm -r ~/builddahliagrub/dahliaos/
            sudo rm -r ~/dahliaos/
            ;;



esac


