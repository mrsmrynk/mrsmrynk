#! /bin/bash

github_colors[0]="#6ccf64"
github_colors[1]="#52a34e"
github_colors[2]="#2e6b38"
github_colors[3]="#1f432b"
github_colors_size=${#github_colors[@]}

for filename in data/*.svg; do
  index=$(($RANDOM % github_colors_size))
  sed -i "s/#.\{6\}/${github_colors[$index]}/" ${filename}
done