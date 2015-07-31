# Example.pm
#   Example perl module
#

package Example;#set namespace
use strict;
use warnings;
use IO::File;

our $VERSION = "0.1";#our makes it public to see the version.

#constructor, does not need to be name new
sub new
{
    my $class = shift;
    print("shift is " . $class);
    my $self = {};#annonymous hash for instance data
    bless($self, $class);#bless() turn this to a class
    return $self;#return the class as an object
}

sub copyfile
{
	#first argument is always the object of $self.
    my ( $self, $origfile, $newfile ) = @_;
    my $bufsize = 1024 * 1024;

    my $origfh = IO::File->new($origfile, 'r') or die("cannot open $origfile ($!)");
    my $newfh = IO::File->new($newfile, 'w') or die("cannot open $newfile ($!)");

    $origfh->binmode(":raw");
    $newfh->binmode(":raw");

    my $buf = '';
    while( $origfh->read( $buf, $bufsize ) ) {
        $newfh->print( $buf ); 
    }
    return 1;
}

1; #this will return 1, must have.
