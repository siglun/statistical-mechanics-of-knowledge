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
