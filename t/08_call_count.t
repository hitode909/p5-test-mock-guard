use strict;
use warnings;
use Test::More;
use Test::Mock::Guard qw(mock_guard);

package Some::Class;

sub new { bless {} => shift }
sub foo { "foo" }
sub bar { 1; }
sub baz { "baz" }

package main;

{
    # class
    my $counts = { foo => 1, bar => 10, baz => 0 };
    my $guard = mock_guard('Some::Class' => $counts);
    my $obj = Some::Class->new;

    for my $name (keys %$counts) {
        my $count = $counts->{$name};
        for (1..$count) {
            is $obj->$name => $count;
        }

        is $guard->called('Some::Class', $name) => $count;
    }
}

done_testing;
