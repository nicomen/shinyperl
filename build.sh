#!/bin/sh

SRC_DIR=src
DIST_DIR=public

mkdir -p $DIST_DIR
echo "shinyperl.com" > $DIST_DIR/CNAME
tpage --trim --pre_chomp --post_chomp --eval_perl $SRC_DIR/index.tt > $DIST_DIR/index.html
for a in style.css perl.svg script.js; do
  cp $SRC_DIR/$a $DIST_DIR/;
done;
