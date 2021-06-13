#!/bin/sh

DIST_DIR=public

mkdir -p $DIST_DIR
tpage --pre_chomp --post_chomp --eval_perl index.tt > $DIST_DIR/index.html
cp perl.svg script.js style.css $DIST_DIR/
