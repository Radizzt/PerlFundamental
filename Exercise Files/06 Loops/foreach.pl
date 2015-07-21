#!/usr/bin/perl
# loops.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
    open(FH, "linesfile.txt");
    my @list = ("one", "two", "three", "four", "five");
    foreach my $s (@list){
    	message($s);
    }
    
    #foreach look without a variable '$_' built in variable
    foreach (@list){
    	message($_);
    }
    
    #postFix notation
    message($_) foreach (@list);
    
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
    print("$0: $e\n");
    exit 0;
}

