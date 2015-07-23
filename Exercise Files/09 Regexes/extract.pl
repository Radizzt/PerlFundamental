#!/usr/bin/perl
# template.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
    my $time = "05:24:37";
#    $time =~ /(..):(..):(..)/;#parenthesis let you extract whats inside of it
#    my $hour = $1;
#    my $min = $2;
#    my $sec = $3;
	
	#another way to assign variable via extract
    my ($hour, $min, $sec) = $time =~ /(..):(..):(..)/;    
    message("Hours: $hour, Min: $min, sec: $sec");
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

