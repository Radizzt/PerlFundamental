#!/usr/bin/perl
# conditionals.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

use constant{
	true => 1,
	false => ''
};

main(@ARGV);

sub main
{
	if (false){
    	message("This is the template.pl exercise file from Perl 5 Essential Training.");
	}
	else{
		message("falsy man");
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

