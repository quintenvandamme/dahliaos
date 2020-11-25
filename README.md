# DahliaOS builds for x86 systems.

## downloads

| version         | Grub         | 64 bit      |      
| -----------  | -----------  | ----------- | 
| 201004       | **x**        | [Download](https://github.com/HexaOneOfficial/dahliaos/releases/download/201004/DahliaOS201004.iso)|  
| 200804       | **x**        | [Download](https://github.com/HexaOneOfficial/dahliaos/releases/download/200804/DahliaOS200804.iso)|  
| 200630_2     | **x**        | [Download](https://github.com/HexaOneOfficial/dahliaos/releases/download/200630_2/DahliaOS200630_2.iso)    |     

## Instructions

**64 bit [64/32 bit uefi 64 bit bios]**

1 download the latest **iso [here](https://github.com/HexaOneOfficial/dahliaos/releases/download/200804/DahliaOS200804.iso)**. 

2 then flash the iso to your usb with **etcher [here](https://www.balena.io/etcher/)**.

3 disable secure boot if you have that option.

## build iso

-**Run this script to build the iso files**

- **!** first install git

64 bit

- `curl -s https://raw.githubusercontent.com/HexaOneOfficial/dahliaos/master/scripts/64/run.sh | sh` 

Now copy the files to a windows pc.

-**Files to iso** 

- Download **Poweriso [here](https://www.poweriso.com/)** and copy the build files you just made. 

-**Flashing to USB** 

- Download **Rufus [here](https://rufus.ie/)** and flash your iso file to your USB.

### Make a Master boot record(BETA)
When you have made the iso, go to command prompt. You can go to this by hitting windows + r and typing in cmd. (Make sure you are admin.) 

-   Then, Run the following commands.

 `diskpart`

and then

    list disk
you should see a screen like this: 

![cmd](https://github.com/HexaOneOfficial/dahliaos/blob/master/assets/image/cmd/Diskpart_list%20disk.png)
    
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
