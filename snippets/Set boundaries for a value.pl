#!/usr/bin/env perl -W # [% title = 'Set boundaries for a value'; BLOCK code %]

use v5.10;

my ($min, $max) = (1,100);

my @input_values = (-10,10,200);

say ((sort { $a <=> $b } ($min, $max, $_))[1]) for @input_values;
# 1
# 10
# 100

#! [% END %]
