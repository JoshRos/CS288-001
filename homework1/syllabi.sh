#!/bin/bash
mkdir NJIT
chmod u=rwx ./NJIT
chmod g=rx ./NJIT
cd NJIT
mkdir CHM ECO PHY
chmod u=rwx ./CHM
chmod g=rx ./CHM
chmod u=rwx ./ECO
chmod g=rx ./ECO
chmod u=rwx ./PHY
chmod g=rx ./PHY
cd CHM
touch chm103.txt chm104.txt
chmod u=rw chm103.txt
chmod g=r chm103.txt
chmod u=rw chm104.txt
chmod g=r chm104.txt
cd ../
cd ECO
touch eco102.txt
chmod u=rw eco102.txt
chmod g=r eco102.txt
cd ../
cd PHY
touch phy102.txt phy104.txt
chmod u=rw phy102.txt
chmod g=r phy102.txt
chmod u=rw phy104.txt
chmod g=r phy104.txt
mkdir PHYS
chmod u=rwx ./PHYS
chmod g=rx ./PHYS
cd PHYS
touch phys430.txt
chmod u=rw phys430.txt
chmod g=r phys430.txt