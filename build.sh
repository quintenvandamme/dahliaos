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
            git clone https://github.com/HexaOneOfficial/dahliaos.git
            mkdir ~/buildgrub
            mkdir ~/buildgrub/boot
            mkdir ~/buildgrub/EFI
            mkdir ~/buildgrub/EFI/BOOT
            cp ~/dahliaos/build/base/200804/grub/64/grub.zip ~/buildgrub/boot
            cd ~/buildgrub/boot
            unzip grub.zip
            rm grub.zip
            cp ~/dahliaos/build/kernel/200804/gurb/64/default/compiled/bzImage ~/buildgrub/boot
            wget https://github.com/HexaOneOfficial/dahliaos/releases/download/200804/initrd
            cd
            cd ~/dahliaos/build/EFI/200804/grub/64/
            cp BOOTx64.EFI bootia32.efi grubx64.efi mmx64.efi ~/buildgrub/EFI/BOOT
            cd
            cd ~/dahliaos/build/base/200804/grub/64/
            cp MD5SUMS README.diskdefines boot.catalog ldlinux.sys syslinux.cfg ~/buildgrub
            ;;
        2)
            git clone https://github.com/HexaOneOfficial/dahliaos.git
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

