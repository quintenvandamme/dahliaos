### build iso

-**First you need to clone the base components**
 
 - `git clone https://github.com/HexaOneOfficial/dahliaos.git` 

-**copy base components to builddahliagrub**

- copy and save `./build.sh` from above in your home directory

- `chmod +x build.sh` 

- `./build.sh`

-**building EFI**  

- `cd ~/builddahliagrub/dahliaos/` 

- `./buildEFI.sh`

-**building GRUB bootloader** 

- `./buildGRUB.sh`

-**setting up linux kernel** 
 
 -1 copy from included build source [recommended]     
 
 - `./buildKERNEL.sh`
 
 -2 copy from system [not recommended]    
   - not complete  

-**setting up dahlia image** 
 
 - `./buildIMAGE.sh`

-**finalizing** 
 
 - copy and save `./finalize.sh` from above in your home directory
 
 - `cd` 
 
 - `chmod +x finalize.sh` 

 - `./finalize.sh`
 
 - ignore remove .git issue's 


Now copy the files to a windows pc.

-**files to iso** 

- open poweriso and copy the build files you just made. 

-**flashing to usb** 

- only rufus is supported! open rufus and flash your iso file you made. 

