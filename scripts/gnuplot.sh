#!/bin/bash

sim="$(pwd)/$1"
plotgnu_file=$(dirname "$0")/plotgnu
echo $sim
mkdir $sim/images
for f in $sim/positions/*.csv; do
  fileoutput=$sim/images/$(basename "$f" .csv).png
  gnuplot -e "filename='$f'; fileoutput='$fileoutput'" $plotgnu_file
done
ffmpeg -y -i $sim/images/%d.png $sim/video.mp4
# rm $(sim)/images/*.png
