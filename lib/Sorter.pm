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

sub medium {
    return Sorter::_medium(shift->get_values);
}

sub _medium {
    return scalar(@_) ? @_[int(scalar(@_) / 2)] : ();
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
