#!/usr/bin/perl
# newfeat.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;
use feature ":5.10";

main(@ARGV);

sub main
{
	my $s = 7;
	
	given($s){
		when(undef){
			say("$s is undefined");
		}	
		when('jimi'){
			say("$s is musician");
		}
		when(/jimi/){
			say("$s may be a musician");
		}
		when([1,3,5,7,9]){
			say("$s is an odd number");
		}
		default{
			say("$s is something else");
		}
	}
	
}

sub error
{
    my $e = shift || 'unkown error';
    my $me = ( split(/[\\\/]/, $0 ) )[-1];
    print("$me: $e\n");
    exit 0;
}

