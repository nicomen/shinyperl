#!/usr/bin/env perl -W # [% title = 'Set boundaries for a value'; BLOCK code %]

use v5.10;

my ($min, $max) = (1,100);

my @inputs = (-10,10,200);

for my $i (@inputs) {
  my $value = (sort { $a <=> $b } ($min, $max, $i))[1];

  say "$i set to $value to be within ($min,$max)";
}

# -10 set to 1 to be within (1,100)
# 10 set to 10 to be within (1,100)
# 200 set to 100 to be within (1,100)

#! [% END %]
