#!/usr/bin/perl
# builtins.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
    my $string = "this is a string\n";
    chomp $string; #take newline at the end of the line away from the string itself.
    my $s2 = uc $string; #uc for UpperCase and lc for LowerCase.
    my $s3 = substr($string, 2, 5);
    my $s4 = index($string, "is");#find first occurence of string
    message("$s2\n$s3\n$s4" );
    message(substr($string, rindex($string, 's')));
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

