#!/usr/bin/perl
# variables.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
    my @array = (1..10);#.. is a range operator, insert 1 to 10 into array
    message(join(':', @array));
    message(join(':', @array[1,4,7]));#list index 1,4,7 value
    message(join(':', @array[1..4,7]));#list index 1 to 4,7 value
    
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

