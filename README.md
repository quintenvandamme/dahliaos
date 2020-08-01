# dahliaos grub

## how to make a bootable usb

### x86_64

**64/32 uefi systems and 64 bios systems**

1 download the latest **iso [here](https://github.com/HexaOneOfficial/dahliaos/releases/download/200630_2/DahliaOS200630_2.iso)**. 

2 then flash the iso to your usb with **etcher [here](https://www.balena.io/etcher/)**.

3 disable secure boot if you have that option.
 

### build iso

-**First you need to clone the base components**
 
 - `git clone https://github.com/HexaOneOfficial/dahliaos.git` 

-**Copy and make base components to ~/builddahliagrub**

- `curl -s https://raw.githubusercontent.com/HexaOneOfficial/dahliaos/master/build.sh | sh` 

-**Setting up linux Kernel** 

- buildKERNEL provides a default kernel and mainline kernel select the one you want to use.

- `./buildKERNEL.sh`

-**Setting up dahlia image** 
 
 - `./buildIMAGE.sh`

-**Finalizing** 
 
- `./finalize.sh`
 

Now copy the files to a windows pc.

-**Files to iso** 

- Download **Poweriso [here](https://www.poweriso.com/)** and copy the build files you just made. 

-**Flashing to USB** 

- Download **Rufus [here](https://rufus.ie/)** and flash your iso file to your USB.


### make tiny dahlia image



### Make a Master boot record(BETA)
When you have made the iso, go to command prompt. You can go to this by hitting windows + r and typing in cmd. (Make sure you are admin.) 

-   Then, Run the following commands.

 `diskpart`

and then

    list disk
you should see a screen like this: 

![enter image description here](https://www.techclassy.com/wp-content/uploads/2019/05/diskpart-select-disk-command-prompt.png.webp)
    
select your disk that you want to format:
(EXAMPLE) Disk 2

    select disk 2
   now you have selected the disk,
   

    clean
    
    create partition primary

    select partition 1

    active

    format fs=ntfs quick

    exit

Extract the files from the iso, copy to the drive and use a disk clones of your choice to create a mbr iso.
