#!/usr/bin/perl # [% title = 'Objects with Object::Pad'; BLOCK code %]

use Object::Pad 0.41;

class Point {
   has $x :param = 0;
   has $y :param = 0;
   has $z = 0;

   method move ($dX=0, $dY=0, $dZ=0) {
      $x += $dX;
      $y += $dY;
      $z += $dZ;
      return $self;
   }

   method describe {
      print "A point at ($x, $y, $z)\n";
   }
}

Point->new(x => 5, y => 10)->move(1,1)->describe;
# A point at (6, 11, 0)
#! [% END %]
