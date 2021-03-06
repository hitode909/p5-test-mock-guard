use strict;
use warnings;

use inc::Module::Install;

name 'Test-Mock-Guard';
all_from 'lib/Test/Mock/Guard.pm';

requires 'Exporter' => 5.63;
requires 'Class::Load' => 0.06;

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More' => 0.96;

repository 'https://github.com/zigorou/p5-test-mock-guard';
bugtracker 'https://github.com/zigorou/p5-test-mock-guard/issues';

WriteAll;
