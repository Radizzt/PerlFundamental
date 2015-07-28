#!/usr/bin/perl
# files.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;
use IO::File;

main(@ARGV);

sub main
{
	#$fh is a reference
	my $fh = IO::File->new('linesfile.txt', 'r') or error("Cannot open file: ($!)");
	
	my $nfh = IO::File->new('ooNewFile.txt', 'w') or error("Cannot write file: ($!)");
	
	#copying a file to a new file
	while(my $line = $fh->getline()){
    	$nfh->print($line);
    	}
	
	$fh->seek(0, 0);
    while(my $line = $fh->getline()){
    	print $line;
    	
    	
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
    print(STDERR "$0: $e\n");
    exit 0;
}

