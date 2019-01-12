#!/bin/bash
cd bin
rm -f *.ABS
rm -f *.OUT
cd ..
cd chara
./make.sh
cd ../em
./make.sh
cd ../game
./make.sh
cd ../hero
./make.sh
cd ../lang
./make.sh
cd ../sys
./make.sh
cd ..
