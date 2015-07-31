#!/usr/bin/perl
# modules.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;
use Artist;

main(@ARGV);

sub main
{
	my $o = Artist->new;
	my $o2 = Artist->new;
	$o->name("Bomb Marley");
	$o2->name("Bomb Hendrix");
    message($o->name . "\n" . $o2->name);
    message($Artist::VERSION);
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

