#!/usr/bin/env perl -W # [% title = 'Automate the web browser(e.g. Firefox)'; BLOCK code %]

use strict;
use warnings;
use Firefox::Marionette();

my $firefox       = Firefox::Marionette->new(visible => 1);
my $window_handle = $firefox->new_window(type => 'tab', focus => 1);
$firefox->switch_to_window($window_handle);
$firefox->go('https://metacpan.org/');

# Get the page source of the content document
# print $firefox->html();

# returns the first element with a matching 'class' property
# $firefox->find_class('container-fluid')->find_id('search-input')->type('Test::More');

# Take the screnshot and return the PNG file
# my $file_handle = $firefox->selfie();

# Returns the first element that matches this expression and sens a 'click' to it
# $firefox->find('//button[@name="lucky"]')->click();

# Just to see it in action with human eyes
sleep 5;

#! [% END %]
