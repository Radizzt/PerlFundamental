#!/usr/bin/perl
# operators.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
   print foreach(1..9);
   print("\n");
   print foreach('a'..'Z', 0..9);
   print("\n");
   print join(', ' , ('01'..'09'));
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

