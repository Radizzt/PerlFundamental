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
    
    while(my $line = <FH>){
    	next if $line =~ /3/;#skip if $line has a 3 in it
    	print $line
    }
    
    message("\nFinished first while");
    
    seek FH, 0, 0;#reread the file. seek <file handle>, <position>, <whence>
    
    while(my $lines = <FH>){
    	last if $lines =~ /3/;#break if there's a 3 in the line
    	print $lines
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
    print("$0: $e\n");
    exit 0;
}

