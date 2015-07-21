#!/usr/bin/perl
# specials.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
    message("The file name is " . __FILE__);
    message("The line number is " . __LINE__);
    message("The package name is " . __PACKAGE__);
}

#__END__ (remove the first # to see it's effect) #this ends the document so everyhthing under is not runned

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

