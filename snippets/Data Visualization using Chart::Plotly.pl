#!/usr/bin/env perl -W # [% title = 'Data Visualization using Chart::Plotly - Line chart'; BLOCK code %]

use strict;
use warnings;

use Chart::Plotly 'show_plot';
use Chart::Plotly::Image 'save_image';
use Chart::Plotly::Plot;
use Chart::Plotly::Trace::Scatter;

my @domainAxis = ("2021-04-15", "2021-04-16", "2021-04-17", "2021-04-18");
my @rangeAxis  = (10, 3, 5, 9);

my $plot    = Chart::Plotly::Plot->new();
my $scatter = Chart::Plotly::Trace::Scatter->new(x => \@domainAxis, y => \@rangeAxis);
$plot->add_trace($scatter);

# Opens the plot in a browser locally
show_plot($plot);

# Save the generated image locally
save_image(
    file   => "lineChart.png",    # Referring to a local filesystem path
    plot   => $plot,
    width  => 1024,               # Sets the image width
    height => 768,                # Sets the image height
    engine => 'auto'
);

#! [% END %]
