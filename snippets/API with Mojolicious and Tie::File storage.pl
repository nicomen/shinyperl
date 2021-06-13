#!/usr/bin/env perl # [% title = 'API with Mojolicious and Tie::File storage'; BLOCK code %]

use Mojolicious::Lite -signatures;
use Tie::File;

tie my @todos, 'Tie::File', 'todos'
    or die 'could not open storage';

# list of todos
# curl localhost:3000
get '/' => sub ($c) {
    $c->render(json => \@todos);
};

# add a new todo note
# curl --request POST localhost:3000 --data 'walk my dog'
post '/' => sub ($c) {
    push @todos, $c->req->body;
    $c->rendered(204); # no content
};

app->start;

#! [% END %]
