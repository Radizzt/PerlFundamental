#!/usr/bin/perl
# template.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
	#[] = class, any matches inside for one character
	#[[:<posix>:]] Posix classes (digit, punct)
	#+ = one or more
	#\d = all digits
	#\w = word character
	#capatalize is the inverse \W = not a word \D = not a digit
    open(FH, 'perlre.txt');
    while(<FH>) {
    	my @list = /([[:punct:]])/g;
    	
        message(join(":", @list)) if @list;
    }
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
    print(STDERR "$0: $e\n");
    exit 0;
}

