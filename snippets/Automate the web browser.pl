#!/usr/bin/env perl -W # [% title = 'Automate the web browser(e.g. Firefox)'; BLOCK code %]

use strict;
use warnings;
use Firefox::Marionette();

my $firefox       = Firefox::Marionette->new(visible => 1);
my $window_handle = $firefox->new_window(type => 'tab', focus => 1);
$firefox->switch_to_window($window_handle);
$firefox->go('https://metacpan.org/');

# Returns the first element with a matching 'class' property (search textbox)
my $element = $firefox->find_class('form-control home-search-input');

# Remove if there is something already filled there
$firefox->clear($element);

# Fill it with search element e.g. Mojolicious
$firefox->type($element, "Mojolicious");

# Find search button by the given id and click it
$firefox->find_class('btn search-btn')->click();

# Take the screnshot, return the PNG file and save it locally
# This will take screenshot of the whole document
# my $file_handle = $firefox->selfie();

# This will only taken screenshot of the element specified
my $file_handle = $firefox->selfie($firefox->find_class('content search-results'));

open(my $screenshot, '>', "firefox_output_screen.png") or die "Unable to open file: $!";
binmode($screenshot);
while (my $line = <$file_handle>) {
    print $screenshot $line;
}
close($screenshot);

#! [% END %]
