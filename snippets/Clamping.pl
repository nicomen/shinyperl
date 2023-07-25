#!/usr/bin/env perl -W # [% title = 'Clamping a value'; BLOCK code %]

use v5.36;

my ($min, $max) = (1,100);
my @inputs = (-10,10,200);

for my $i (@inputs) {
  my $value = clamp($i, $min, $max);
  say "$i set to $value to be within ($min,$max)";
}

sub clamp ($i,$min,$max) {
  return (sort { $a <=> $b } ($min, $max, $i))[1];
}

# -10 set to 1 to be within (1,100)
# 10 set to 10 to be within (1,100)
# 200 set to 100 to be within (1,100)

#! [% END %]
