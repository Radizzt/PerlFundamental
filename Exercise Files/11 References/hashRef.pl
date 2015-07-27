#!/usr/bin/perl
# refs.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
	my %hash = (
		name => "jimi Hendrix",
		instrument => "Guitar",
		album => "are you experience"
	);
	my $ref = \%hash;
	
	my $hashRef = {
		name => "jimi Hendrix",
		instrument => "Guitar",
		album => "are you experience"
	};
	
	my $copy = $hashRef;
	
	$copy->{song} = "Purple Haze";
	$hashRef->{bleh} = "Harro";
	
    message(join(" : ",%$ref));
    message(join(" : ",%$hashRef));
    message("****************forEach*****************");
    foreach my $k (sort keys %$hashRef){
    	my $v = $hashRef->{$k};
    	message("$k: $v");
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
    print("$0: $e\n");
    exit 0;
}

