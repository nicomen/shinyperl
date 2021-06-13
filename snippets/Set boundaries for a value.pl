#!/usr/bin/env perl -W # [% title = 'Set boundaries for a value'; BLOCK code %]

use v5.10;

my ($min, $max) = (1,100);

my @inputs = (-10,10,200);

for my $i (@inputs) {
  my $value = (sort { $a <=> $b } ($min, $max, $i))[1];

  say "$value is within ($min,$max)";
}

# 1 is within (1,100)
# 10 is within (1,100)
# 100 is within (1,100)

#! [% END %]
