#!/usr/bin/perl
# variables.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
    my @array = (1, "two", 3, 4, 5);
    my @array2 = qw("wee tard haha"); #each word is it's own index
    my ( $one, $two, $three, $four) = (1, 2, 3, 4); #assigning multiple variable
    message(join(":", @array));
    message(join(":", @array2));
    message($one);
    message($two);
    message($three);
    message($four);
    
    message($array[1]); #get second index of array
    message("there are " . scalar @array . " element in the array"); #cast the array into a number in the array
    
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

