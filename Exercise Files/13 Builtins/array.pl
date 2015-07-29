#!/usr/bin/perl
# builtins.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
	my @list = qw(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec);#qw = quoteWord
	push(@list, "Foo");
	my $string = pop(@list);
	my $s2 = shift(@list);#take the first element in the array
    message(join(" : ", @list));
    message("Popped: " . $string);
    message("Shift: " . $s2);
    unshift(@list, $s2);#put it on the first element of the array.
 	message(join(" : ", reverse(@list)));
 	message(join(" : ", sort(@list)));
}

sub message
{
    my $m = shift or return;
    print("$m\n");
}

sub error
{
    my $e = shift || 'unkown error';
    print("$0: $e\n");
    exit 0;
}

