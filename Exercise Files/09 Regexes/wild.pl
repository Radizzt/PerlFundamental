#!/usr/bin/perl
# template.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
	# ^ = beginning
	# $ = ending
	# . = any one character
	# {<number>} = repeat <number> of time
	# * = repeat 0 or more time
	# *? = repeat 0 or more time once.
    open(FH, 'short.txt');
    while(<FH>) {
    	my @list = /(a.*?s)/g;
        message(join(':', @list)) if @list;
    }
    close FH;
}

sub message
{
    my $m = shift or return;
    print("$m\n");
}

sub error
{
    my $e = shift || 'unkown error';
    print(STDERR "$0: $e\n");
    exit 0;
}

