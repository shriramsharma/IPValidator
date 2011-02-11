#!/usr/bin/env perl

use inc::Module::Install;

name 'App-IPValidator';
all_from 'lib/App/IPValidator.pm';

requires 'Scalar::Util::Numeric';
requires 'Exporter';

test_requires 'Test::Most';
test_requires 'Test::Exception';

auto_install;
WriteAll;
