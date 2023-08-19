#!/bin/bash
for f in ./*.mp4; do
    filename=$(basename -- "$f")
    extension="${filename##*.}"
    filename="${filename%.*}"
    ffmpeg -i $filename.mp4 -vn -acodec pcm_s16le -ar 22050 -ac 1 wav/$filename.wav
done
