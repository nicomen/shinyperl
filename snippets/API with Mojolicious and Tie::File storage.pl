#!/usr/bin/env perl # [% title = 'API with Mojolicious and Tie::File storage'; BLOCK code %]

use Mojolicious::Lite -signatures;
use Tie::File;

tie my @todos, 'Tie::File', 'todos'
    or die 'could not open storage';

# curl localhost:3000/list
get '/list' => sub ($c) {
    $c->render(json => \@todos);
};

# curl --request POST localhost:3000/add --data 'walk my dog'
post '/add' => sub ($c) {
    push @todos, $c->req->body;
    $c->rendered(204); # no content
};

app->start;

#! [% END %]
