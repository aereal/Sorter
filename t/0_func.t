package test::SorterFunctions;
use strict;
use warnings;
use base qw(Test::Class);
use Test::More;
use Sorter;
use 5.010;

sub less_than : Tests {
    my $c = 'Sorter';

    {
        say "when given empty list";
        my $given = [];
        is_deeply [$c->less_than($given->[0], $given)], [];
    }

    {
        say "when given one element list";
        my $given = [1];
        is_deeply [$c->less_than($given->[0], $given)], [];
    }

    {
        say "when given two different elements list";
        my $given = [1, 2];
        is_deeply [$c->less_than($given->[0], $given)], [];
    }
}

sub larger_than : Tests {
    my $c = 'Sorter';

    {
        say "when given empty list";
        my $given = [];
        is_deeply [$c->larger_than($given->[0], $given)], [];
    }

    {
        say "when given one element list";
        my $given = [1];
        is_deeply [$c->larger_than($given->[0], $given)], [1];
    }

    {
        say "when given two different elements list";
        my $given = [1, 2];
        is_deeply [$c->larger_than($given->[0], $given)], [1, 2];
    }

    {
        say "when given 3 different elements list";
        my $given = [3, 2, 1];
        is_deeply [$c->larger_than($given->[0], $given)], [3];
    }
}

sub quick_sort : Tests {
    my $c = 'Sorter';

    {
        say "when given empty array";
        my $given = [];
        is_deeply $c->quick_sort($given), [];
    }

    {
        say "when given one element array";
        my $given = [1];
        is_deeply $c->quick_sort($given), [1];
    }

    {
        say "when given multiple elements array";
        my $given = [3, 1, 2];
        is_deeply $c->quick_sort($given), [1, 2, 3];
    }
}

__PACKAGE__->runtests;

1;
