#!/usr/bin/perl
# refs.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
	my @arr = ("This is the Perl 5 references chapter.",
    	42,
    	"Another String",
    	"one more value"
    	);
	
	#array reference
    my $var = [
    	"This is the Perl 5 references chapter.",
    	42,
    	"Another String",
    	"one more value"
    	];
    message(join(' : ',@$var)); #@$var dereferencing the reference array
    message(join(', ', @arr));
    my $ref = \@arr;
    my $copy = $var;
    message(join(', ', @$ref));
    $copy->[2] = 187; # -> dereference a member. Think C++
     message(join(', ', @$copy));
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

