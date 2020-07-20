# dahliaos grub

## how to make a bootable usb

### x86_64

**64/32 uefi systems and 64 bios systems**

1 download the latest **iso [here](https://github.com/HexaOneOfficial/dahliaos/releases/download/200630_2/DahliaOS200630_2.iso)**. 

2 then flash the iso to your usb with **rufus [here](https://rufus.ie/)**.

3 disable secure boot if you have that option.
 

**32 bios systems**

1 download the latest **iso [here](https://github.com/HexaOneOfficial/dahliaos/releases/download/200630_2/DahliaOS200630_2.32bit.iso)**.

2 then flash the iso to your usb with **rufus [here](https://rufus.ie/)**.

3 boot from usb.

### build iso

-**First you need to clone the base components**
 
 - `git clone https://github.com/HexaOneOfficial/dahliaos.git` 

-**copy base components to builddahliagrub**

- save `./build.sh` in your home directory

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
 
 - save `./finalize.sh` in your home directory
 
 - `chmod +x finalize.sh` 

 - `./finalize.sh`


Now copy the files to a windows pc.

-**files to iso** 

- open poweriso and copy the build files you just made. 

-**flashing to usb** 

- only rufus is supported! open rufus and flash your iso file you made. 

