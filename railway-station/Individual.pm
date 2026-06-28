package Individual;


use Carp;
use strict;
use Element;
use vars qw ($AUTOLOAD);

##########################
#
# Primitives for handling of textnodes
#

sub new {
    my $class   = shift;
    my $arrived = shift;
    my $queue   = shift;


    my $self = {};
 
    bless $self, $class;

    $self->{'arrived'}= $arrived;
    $self->{'queue'}  = $value;

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

