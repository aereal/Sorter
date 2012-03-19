package Sorter;
use strict;
use warnings;

sub new {
    my $class = shift;
    my $self = {};
    bless $self, $class;
    $self->initialize;
    return $self;
}

sub initialize {
    my $self = shift;
    $self->set_values;
}

sub sort {
    #
}

sub count {
    my $self = shift;
    return scalar($self->get_values);
}

sub get_values {
    my $self = shift;
    return @{ $self->{values} };
}

sub set_values {
    my ($self, @args) = @_;
    $self->{values} = \@args;
}

1;
