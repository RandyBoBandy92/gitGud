#!/bin/bash

input_dir="./"
output_dir="./processed"

for file in "$input_dir"*.mov; do
  base_name=$(basename "$file" .mov)
  ffmpeg -i "$file" -c:v libx264 -crf 23 -preset medium -an "$input_dir/$base_name.mp4"
  mv "$file" "$output_dir/"
done
