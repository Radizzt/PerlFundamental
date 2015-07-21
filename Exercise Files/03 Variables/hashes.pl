#!/usr/bin/perl
# variables.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
    
    #hash variable is like an object with a key and value
    my %hash = ("this" => "that", "test" => "testing", "hello" => "harro");
    my %hashs = ("this" , "that", "test" , "testing", "hello" , "harro");#works too, but hard to read.
    message($hash{"test"});
    message($hashs{"hello"});
    
    message(join(":", keys(%hash))); #list all keys
    message(join(":", sort(keys(%hash)))); #list all keys, sorted
    message(join(":", sort(values(%hash)))); #list all value, sorted
    
    #go through each keys and do something.
    foreach my $k (sort keys %hash){
    	my $v = $hash{$k};
    	message("$k is $v");
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

