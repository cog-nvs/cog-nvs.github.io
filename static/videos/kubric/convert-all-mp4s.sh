#!/usr/bin/env bash
shopt -s nullglob

for f in *.mp4; do
  echo "Re-encoding $f → converted_$f"
  ffmpeg -y -i "$f" -c:v libx264 -preset slow -crf 23 -c:a aac -b:a 128k "converted_$f"
done
