#!/usr/bin/perl -w

use lib '.';

use strict;
use Individual;

use warnings;
use Math::Random qw(random_poisson);

my $lambda = 4.5;

my @individuals;

my $person = 0;

my $start_time = -15;
my   $end_time = 15;

for(my $time = $start_time; $time <= $end_time; $time++) {

    my $new_persons = random_poisson(1, $lambda);
    for(my $i=0;$i<$new_persons;$i++) {
	$person++;
	my $individual = new Individual($person,$time,65);
	push @individuals,$individual;
	print $time . "\n";
    }
}
