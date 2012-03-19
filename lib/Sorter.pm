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
    return Sorter::_count($self->get_values);
}

sub _count {
    return scalar(@_);
}

sub medium {
    return Sorter::_medium(shift->get_values);
}

sub _medium {
    if (my $count = Sorter::_count(@_)) {
        return $_[int($count / 2)];
    } else {
        return;
    }
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
