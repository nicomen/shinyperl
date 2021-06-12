#!/usr/bin/env perl -W # [% title = 'Fetch a random quote'; BLOCK code %]

use Mojo::UserAgent;

my $agent = Mojo::UserAgent->new;

my $tx = $agent->get("http://www.quotationspage.com/random.php");

my $quote  = $tx->res->dom->at("dt");
my $author = $quote->next->at("b");

print join " &mdash; ", ($quote->all_text, $author->all_text);
# Perl is shiny &mdash; Perl Hacker

#! [% END %]
