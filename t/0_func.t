package test::SorterFunctions;
use strict;
use warnings;
use base qw(Test::Class);
use Test::More;
use Sorter;
use 5.010;

subtest less_than => sub{
    my $c = 'Sorter';

    subtest given_empty_list => sub {
        my $given = [];
        is_deeply [$c->less_than($given->[0], $given)], [];
    };

    subtest given_one_element_list => sub {
        my $given = [1];
        is_deeply [$c->less_than($given->[0], $given)], [];
    };

    subtest given_2_different_elements_list => sub {
        my $given = [1, 2];
        is_deeply [$c->less_than($given->[0], $given)], [];
    };
};

subtest larger_than => sub {
    my $c = 'Sorter';

    subtest given_empty_list => sub {
        my $given = [];
        is_deeply [$c->larger_than($given->[0], $given)], [];
    };

    subtest given_1_element_list => sub{
        my $given = [1];
        is_deeply [$c->larger_than($given->[0], $given)], [1];
    };

    subtest given_2_different_elements_list => sub {
        my $given = [1, 2];
        is_deeply [$c->larger_than($given->[0], $given)], [1, 2];
    };

    subtest given_3_different_elements_list => sub {
        my $given = [3, 2, 1];
        is_deeply [$c->larger_than($given->[0], $given)], [3];
    };
};

subtest quick_sort => sub {
    my $c = 'Sorter';

    subtest given_empty_list => sub {
        my $given = [];
        is_deeply $c->quick_sort($given), [];
    };

    subtest given_1_element_list => sub {
        my $given = [1];
        is_deeply $c->quick_sort($given), [1];
    };

    subtest given_multiple_elements => sub {
        my $given = [3, 1, 2];
        is_deeply $c->quick_sort($given), [1, 2, 3];
    };
};

done_testing;
