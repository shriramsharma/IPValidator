#!/usr/bin/env perl -T

use strict;
use warnings;

use Test::Most qw/no_plan/;

use App::IPValidator qw/validate/;

ok !validate('abcdefghijk'), "Invalid IP: abcdefghijk";

ok validate('0.255.234.123'), 'Valid IP address 0.255.234.123';

ok !validate('444.1.44.000'), "Invalid IP: 444.1.44.000";

ok !validate('abc.444.i023.999'), "Invalid IP: abc.444.i023.999";

ok !validate('200.122.2'), "Invalid IP: 200.122.2";

ok !validate('0..99.'), "Invalid IP: 0..99.";

ok !validate(undef), "Invalid IP: undef";
1;
