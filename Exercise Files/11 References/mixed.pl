#!/usr/bin/perl
# refs.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
	#an Array reference with Hashes in them
	my $artists = [
		{
			name => "Jimi Hendrix",
			instrument => "Guitar",
			genre => "Rock"	
		},
		{
			name => "Miles Davis",
			instrument => "Trumpet",
			genre => "Jazz"	
		},
		{
			name => "Ella Fitzgerald",
			instrument => "Vocal",
			genre => "Jazz"	
		}
	];

	#adding a new hash into the @arist array
	push @$artists, {name=>"Yoyo Ma", instrument=>"Cello", genre=>"Classical"};
	
	#each @artists give back a hash and since it's contain in a reference you need to dereference it.
    foreach my $artist (@$artists){
    	message("$artist->{name}: $artist->{instrument}, $artist->{genre}");
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

