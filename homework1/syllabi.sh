#!/bin/bash
mkdir ~/NJIT
cd ~
chmod u=rwx NJIT
chmod g=rx NJIT

cd ~/NJIT
mkdir CHM ECO PHY
chmod u=rwx CHM ECO PHY
chmod g=rx CHM ECO PHY
chmod o-rwx CHM ECO PHY

cd CHM
touch chm103.txt chm104.txt
chmod u=rw chm103.txt chm104.txt
chmod g=r chm103.txt chm104.txt
chmod o-rwx chm103.txt chm104.txt

cd ..
cd ECO
touch eco102.txt
chmod u=rw eco102.txt
chmod g=r eco102.txt
chmod o-rwx eco102.txt

cd ..
cd PHY
touch phy102.txt phy104.txt
chmod u=rw phy102.txt phy104.txt
chmod g=r phy102.txt phy104.txt
chmod o-rwx phy102.txt phy104.txt

mkdir PHYS
chmod u=rwx ./PHYS
chmod g=rx ./PHYS
chmod o-rwx ./PHYS

cd PHYS
touch phys430.txt
chmod u=rw phys430.txt
chmod g=r phys430.txt
chmod o-rwx phys430.txt