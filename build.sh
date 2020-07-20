mkdir ~/builddahliagrub
cd 
cp -r /dahliaos ~/builddahliagrub
cd builddahliagrub
mkdir boot
mkdir dahlia 
mkdir EFI
chmod +x buildEFI.sh
chmod +x buildGRUB.sh
chmod +x buildKERNEL.sh
chmod +x buildIMAGE.sh
chmod +x finalize.sh
cd builddahliagrub/dahliaos