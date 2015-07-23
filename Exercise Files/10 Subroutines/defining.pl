#!/usr/bin/perl
# subs.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

use subs qw(message error); #this is a pragma so that you can use subroutine without the parenthesis

main(@ARGV);

sub main
{
    message "This is the template.pl exercise file from Perl 5 Essential Training.";
    error "this is an error";
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

