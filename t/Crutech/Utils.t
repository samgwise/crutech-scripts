#! /usr/bin/env perl
use strict;
use warnings;
use Test::More tests => 5;


use lib 'lib';
use Crutech::Utils;

is( Crutech::Utils::has_content(''), 0, 'has_content returns 0 on empty string');
is( Crutech::Utils::has_content(undef), 0, 'has_content returns 0 on undef');
is( Crutech::Utils::has_content('foo'), 1, 'has_content returns 1 on stringy content');
is( Crutech::Utils::has_content(0), 1, 'has_content returns 1 on numeric');

is(
  Crutech::Utils::has_content(
    Crutech::Utils::slurp('t/res/test-names.txt')
  ),
  1,
  'slurp returns content'
);

# TODO
# ltsp_users tests
