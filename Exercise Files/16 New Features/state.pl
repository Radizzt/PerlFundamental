#!/usr/bin/perl
# newfeat.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;
use feature ":5.10";

main(@ARGV);

sub main
{

	my $i = 5;
	increment($i);
	increment($i);
	increment($i);
	say $i;

}

sub error
{
    my $e = shift || 'unkown error';
    my $me = ( split(/[\\\/]/, $0 ) )[-1];
    print("$me: $e\n");
    exit 0;
}

sub increment{
	state $n = shift; #remember what it was before
	say ++$n;
}