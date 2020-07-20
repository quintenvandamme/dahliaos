### build iso

-**First you need to clone the base components**
 -`git clone https://github.com/HexaOneOfficial/dahliaos.git` 

-**copy base components to builddahliagrub**
 -`cd dahliaos` 
 -`chmod +x build.sh` 
 -`./build.sh`

-**building EFI**  
 -`cd`
 -`cd builddahliagrub` 
 -`./buildEFI.sh`

-**building GRUB bootloader** 
 -`./buildGRUB.sh`

-**setting up linux kernel** 
 -1 copy from included build source [recommended]     
   -`./buildKERNEL.sh`
 -2 copy from system [not recommended]    
   - not complete  

-**setting up dahlia image** 
 -`./buildIMAGE.sh`

-**finalizing** 
 -`./finalize.sh`

Now copy the files to a windows pc.

-**files to iso** 
 -open poweriso and copy the build files you just made. 

-**flashing to usb** 
 -only rufus is supported! open rufus and flash your iso file you made. 
