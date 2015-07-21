#!/usr/bin/perl
# conditionals.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
	my $x = 42;
	# <action> if true
	message("number is in range!") if ($x > 25 and $x < 100); #post fix notation
	message("number is in range!") if $x > 25 and $x < 100;
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

