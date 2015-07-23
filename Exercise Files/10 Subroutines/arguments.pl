#!/usr/bin/perl
# subs.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
	my $s = "This is the template.pl exercise file from Perl 5 Essential Training.";
	my $z = "42";
    message($s, $z);
}

sub message
{
	my ($m, $y) = @_; #@_ is where all the argument being passed is in
    print("$m ($y) \n");
}

sub error
{
    my $e = shift || 'unkown error';
    print("$0: $e\n");
    exit 0;
}

