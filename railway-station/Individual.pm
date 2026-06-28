package Individual;

use Carp;
use strict;

use vars qw ($AUTOLOAD);

sub new {
    my $class   = shift;
    my $id      = shift;
    my $arrived = shift;
    my $queue   = shift;

    my $self = {};
 
    bless $self, $class;
    
    $self->{'id'}     = $id;
    $self->{'arrived'}= $arrived;
    $self->{'queue'}  = $queue;

    $self;
}

sub departure {
    my $self   = shift;

    if(@_) {
	return $self->{'departure'}    = shift;
    } else {
	return $self->{'departure'};
    }

}

sub in_time {
    my $self   = shift;


    print STDERR $self->{'departure'} . " " .
	$self->{'arrived'} . " " .
	$self->{'get_there'} . "\n";

    if($self->{'departure'} - $self->{'arrived'} > $self->{'get_there'}) {
	return 1;
    } else {
	return 0;
    }

}

sub do_believe {
    my $self  = shift;
    my $clock = shift;
    my $time  = shift;

    my $lower = 5;
    my $upper = 3;
    my $peak  = 4.5;

    my $max   = 0.8;

    my $threshold = 0;
    if($clock <= $peak) {
	if($clock > $lower) {
	    $threshold = $max/($peak-$clock);
	} else {
	    $threshold = 0;
	}
    } else {

    }
	
    
}


sub AUTOLOAD {
    my $self=shift;
 
    my $type=ref($self) || croak "$self is not an object!";
    my $name=$AUTOLOAD;
 
    $name =~ s/.*://;
 
    if(@_) {
        return $self->{$name}=shift;
    } else {
        return $self->{$name};
    }
}


1;
