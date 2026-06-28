#!/usr/bin/perl -w

use lib '.';

use strict;
use Individual;

my @individuals;

my $person = 0;

my $start_time = -15;
my   $end_time = 15;

for(my $time = $start_time; $time <= $end_time; $time++) {
    my $individual = Individual->new(34,23,65);
    print $time . "\n";
}
