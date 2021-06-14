#!/usr/bin/env perl -W # [% title = 'Objects with Moo'; BLOCK code %]

package Point;

use Moo;

has 'x' => is => 'rw';
has 'y' => is => 'rw';

sub describe {
  my ($self) = @_;

  printf "A point at (%d,%d)", $self->x, $self->y;
}

Point->new( x => 4, y => 2 )->describe;
# A point at (4,2)

#! [% END %]
