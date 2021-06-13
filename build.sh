#!/bin/sh

mkdir -p dist
tpage --pre_chomp --post_chomp --eval_perl index.tt > dist/index.html
cp perl.svg script.js style.css dist/
