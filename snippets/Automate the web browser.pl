#!/usr/bin/env perl -W # [% title = 'Automate the web browser (e.g. Firefox)'; BLOCK code %]

use Firefox::Marionette();

my $firefox = Firefox::Marionette->new(visible => 1);
my $window  = $firefox->new_window(type => 'tab', focus => 1);
$firefox->switch_to_window($window);

# Return first element with a matching 'class' property (search textbox)
my $e = $firefox->go('https://metacpan.org/')
                ->find_class('form-control home-search-input')

# Remove if there is something already filled there
$firefox->clear($e);

# Fill it with search element e.g. Mojolicious
$firefox->type($e, "Mojolicious");

# Find search button by the given id and click it
$firefox->find_class('btn search-btn')->click();

# Take screnshot of entire document
print $firefox->selfie()->filename;
# /tmp/full_screenshot.png

# This will only take screenshot of the element specified
my $fh = $firefox->selfie($firefox->find_class('content search-results'));
print $fh->filename;
# /tmp/full_screenshot.png

#! [% END %]
