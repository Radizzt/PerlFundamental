#!/usr/bin/perl
# refs.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
    my $var = "This is the Perl 5 references chapter.";
    my $ref = \$var; #$ref reference to $var
    my $copy = $ref;
    	my $x = 10;
	my $refs = \$x;
    
    message($$ref);
    $var = 42;
    message($$copy);
    
    decrement($refs);
	decrement($refs);
	decrement($refs);
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

sub decrement{
	my $n = shift; #remember what it was before
	say --$$n;
}