#!/usr/bin/env perl

use FindBin qw/ $Bin /;

use Test::More;
use Test::Strict;

# Turn off explicit testing of literal 'use (strict|warning)'…
local $Test::Strict::TEST_WARNINGS = 0;
local $Test::Strict::TEST_STRICT   = 0;
# …but turn them on while doing syntax check
local $ENV{PERL5OPT} = '-W -Mstrict';

all_perl_files_ok( "$Bin/../snippets" );

done_testing;
