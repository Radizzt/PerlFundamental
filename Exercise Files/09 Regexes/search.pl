#!/usr/bin/perl
# template.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
    open(FH, 'short.txt');
#    while(<FH>) {
#    	#regex starts between the / slashes 
#        print if /\//; 
#        #or m<symbol> </symbol> (m| |)
#        #m|regular|
#    }
    
    #longer version of comparing each line in the file
   # while(my $line = <FH>){
   	# '=~' pattern match operator 
    #	print $line if $line =~ m|/|; 
    #}
    
     while(my $line = <FH>){
   	    #'=~' pattern match operator 
   	    #search and replace, /s mean subsitute only replace the first encounter on the line if you want to replace every occurence add a 'g' (global matching) at the end 's/a/bob/g'
   	    $line =~ s/regular/BOB/; 
    	print $line;
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

