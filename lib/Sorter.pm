package Sorter;
use strict;
use warnings;
use 5.010;

sub less_than {
    my ($class, $pivot, $array) = @_;
    return scalar(@$array) ? grep { $_ < $pivot } @$array : ();
}

sub larger_than {
    my ($class, $pivot, $array) = @_;
    return grep { $_ >= $pivot } @$array;
}

sub quick_sort {
    my ($class, $array) = @_;
    return $array unless scalar(@$array);
    my ($pivot, $less, $larger);

    $pivot = shift @$array;
    $less = $class->quick_sort([$class->less_than($pivot, $array)]);
    $larger = $class->quick_sort([$class->larger_than($pivot, $array)]);

    return [@$less, $pivot, @$larger];
}

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
    my $self = shift;
    $self->set_values(@{Sorter->quick_sort([$self->get_values])});
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
