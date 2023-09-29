#!/bin/bash

cd ~/NJIT
ls -lR > ~/listing

cd CHM
mv chm103.txt chm104.txt ..
cd ..
cd ECO
mv eco102.txt ..
cd ..
cd PHY
mv phy102.txt phy104.txt ..
cd PHYS
mv phys430.txt ../..

cd ..
rmdir PHYS
cd ..
rmdir CHM ECO PHY

ls -lR >> ~/listing