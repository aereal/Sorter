package Sorter;
use strict;
use warnings;

sub new {
  my $class = shift;
  bless {values => []}, $class;
}

sub sort {
  #
}

sub get_values {
  #
}

sub set_values {
  my ($self, @args) = @_;
  $self->{values} = @args;
}

1;
