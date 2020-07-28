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
