#!/usr/bin/env perl -W # [% title = 'Easy interaction with CSV'; BLOCK code %]

use Text::CSV_XS qw( csv );

# Read whole file in memory
my $aoa = csv (in => "data.csv");  # as array of array
my $aoh = csv (in => "data.csv",
               headers => "auto"); # as array of hash

# Write array of arrays as csv file
csv (in => $aoa, out => "file.csv", sep_char=> ";");

# Only show lines where "code" is odd
csv (in => "data.csv", filter => { code => sub { $_ % 2 }});

#! [% END %]
