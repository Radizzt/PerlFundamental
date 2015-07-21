#!/usr/bin/perl
# conditionals.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
	my $x = 24;
	unless($x > 25 and $x <100){
		message("number is out of range");
	}
	
	message("number is out of range2") unless $x > 25 and $x < 100;
	message("number is out of range3") unless ($x > 25 and $x < 100);
	message("number is out of range4") if ($x < 25 or $x > 100);
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

