#!/bin/bash

input_dir="./"
output_dir="./processed"

mkdir -p "$output_dir"

for file in "$input_dir"*.mov; do
  base_name=$(basename "$file" .mov)
  palette="/tmp/palette.png"
  filters="fps=30,scale=1080:-1:flags=lanczos"

  ffmpeg -v warning -i "$file" -vf "$filters,palettegen=stats_mode=diff:max_colors=256" -update 1 -y "$palette"
  ffmpeg -v warning -i "$file" -i "$palette" -lavfi "$filters [x]; [x][1:v] paletteuse=dither=none:new=1" -y "$input_dir/$base_name.gif"

  mv "$file" "$output_dir/"
done
