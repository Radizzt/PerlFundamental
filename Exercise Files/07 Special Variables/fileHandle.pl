#!/usr/bin/perl
# specials.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
    while(<>){#will put the file in '<>' and read it.
    	print "$. $_";#$. prints out line number
    }
}

sub message
{
    my $m = shift or return;
    print("$m\n");
}

sub error
{
    my $e = shift || 'unkown error';
    print(STDERR "$e\n");#standard Error output "STDOUT" is standard output
    exit 0;
}

