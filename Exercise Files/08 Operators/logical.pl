#!/usr/bin/perl
# operators.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
	#&& and || is high precedence logical operator while 'and' and 'or' is low precedence.
	#&& and || require parenthesis around their operand usually, while the other doesn't require it
	#for logic, recommend using 'and' and 'or'
	
	my $s = $ARGV[1] || "default";
	message($s);
	
    if( 1==1 and 2==2 ){
    	message("TRUE!");
    }
    else{
    	message("NOT TRUE!");
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
    print("$0: $e\n");
    exit 0;
}

