#!/usr/bin/perl
# builtins.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
	my $number = 123.456;
	my $hexNum = "a5";
	my $octNum = "010";
	srand($$ . time); #give random method a starting number
	my $random = int(rand()*100);
	my $hex = hex($hexNum);
	my $oct = oct($octNum);
	my $n2 = int($number);
    message("$n2\n$hex\n$oct\n$random");
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

