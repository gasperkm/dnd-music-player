#!/bin/bash

echo "Fetching a list of files in each music subfolder..."
echo -n "" > ./music_library.js

counter=0

# Append any additional subfolder lists
echo -n "var musiclist = [" >> ./music_library.js
for d in ./*/
do
   if [ $counter == 0 ]; then
      counter=$((counter+1))
      echo "Checking $d subfolder"
	  echo -n "[" >> ./music_library.js
#      echo -n "\"subfolder_$(basename $d)\"" >> ./music_library.js
      echo -n "\"$(basename $d)\"" >> ./music_library.js
      for i in ./$d/*
      do
         echo -n ", \"${d}$(basename $i)\"" >> ./music_library.js
      done
	  echo -n "]" >> ./music_library.js
   else
      echo "," >> ./music_library.js
      counter=$((counter+1))
      echo "Checking $d subfolder"
	  echo -n "[" >> ./music_library.js
#      echo -n "\"subfolder_$(basename $d)\"" >> ./music_library.js
      echo -n "\"$(basename $d)\"" >> ./music_library.js
      for i in ./$d/*
      do
         echo -n ", \"${d}$(basename $i)\"" >> ./music_library.js
      done
	  echo -n "]" >> ./music_library.js
   fi
done
echo "];" >> ./music_library.js

echo "var nrlibrary = $counter;" >> ./music_library.js

#for d in ./*/
#do
#   counter=$((counter+1))
#   echo "Checking $d subfolder"
#   echo -n "var list$counter = [" >> ./music_library.js
#   echo -n "\"subfolder_$(basename $d)\"" >> ./music_library.js
#   for i in ./$d/*
#   do
#      echo -n ", \"${d}$(basename $i)\"" >> ./music_library.js
#   done
#   echo "];" >> ./music_library.js
#done
#
#echo "var nrlibrary = $counter;" >> ./music_library.js

read -n 1 -s -p "Press any key to exit..."
echo ""
exit 0

#echo "Fetching a list of files in each music subfolder..."
#echo -n "" > ambient_list.txt
#echo -n "" > battle_list.txt
#echo -n "" > creepy_list.txt
#echo -n "" > tavern_list.txt
#echo -n "" > temple_list.txt
#echo -n "" > town_list.txt
## Append any additional subfolder lists, if new music subfolder is made
#
#echo "Checking ./ambient subfolder"
#for i in $(ls ./ambient/*)
#do
#   echo $(basename $i) >> ./ambient_list.txt
#done
#echo "Checking ./battle subfolder"
#for i in $(ls ./battle/*)
#do
#   echo $(basename $i) >> ./battle_list.txt
#done
#echo "Checking ./creepy subfolder"
#for i in $(ls ./creepy/*)
#do
#   echo $(basename $i) >> ./creepy_list.txt
#done
#echo "Checking ./tavern subfolder"
#for i in $(ls ./tavern/*l)
#do
#   echo $(basename $i) >> ./tavern_list.txt
#done
#echo "Checking ./temple subfolder"
#for i in $(ls ./temple/*)
#do
#   echo $(basename $i) >> ./temple_list.txt
#done
#echo "Checking ./town subfolder"
#for i in $(ls ./town/*)
#do
#   echo $(basename $i) >> ./town_list.txt
#done
#
#read -n 1 -s -p "Press any key to exit..."
#echo ""
#
#exit 0
