#!/usr/bin/perl
# builtins.pl by Bill Weinman <http://bw.org/contact/>
# Copyright (c) 2010 The BearHeart Group, LLC
#
use strict;
use warnings;

main(@ARGV);

sub main
{
	my $t = time();#give Epoch time, number of seconds since january 1, 1970
	my $now = localtime($t);
	my @month = qw(Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec);
	my  ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) =localtime($t);
	#grenich time
	#my  ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) =gmtime($t);
    message("$now");
    $year += 1900;
    message("$year/$month[$mon]/$mday $hour:$min:$sec");
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

