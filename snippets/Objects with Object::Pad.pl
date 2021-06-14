#!/usr/bin/perl -W # [% title = 'Objects with Object::Pad'; BLOCK code %]

use Object::Pad;

class Point {
  has $x = 0;
  has $y = 0;

  BUILD {
    ($x, $y) = @_;
  }

  method move ($dX, $dY) {
    $x += $dX;
    $y += $dY;
  }

  method describe {
    print "A point at ($x,$y)";
  }
}

Point->new(5,10)->describe;
# A point at (5,10)

#! [% END %]
