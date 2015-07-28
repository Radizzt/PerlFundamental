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
    my $origFile = "olives.jpg";
    my $newFile = "copy.jpg";
    my $bufferSize = 1024 * 1024;
    
    my $origFH = IO::File->new($origFile, 'r') or error ("cannot open $origFile: ($!)");
    my $newFH = IO::File->new($newFile, 'w') or error ("cannot open $newFile: ($!)");
    
    #important code. without this, it will not work in Window
    $origFH->binmode(":raw");#set it to binary mode
    $newFH->binmode(":raw");
    
    my $buf = '';
    my $counter = 0;
    while($origFH->read($buf, $bufferSize)){
    	message(++$counter);
    	$newFH->print($buf);
    }
    message("Done!");
    
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

