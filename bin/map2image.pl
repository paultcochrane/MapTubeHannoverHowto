use strict;
use warnings;

use lib qw(lib);

use Map::Tube::Hannover;

my $hannover = Map::Tube::Hannover->new;
my $map_name = $hannover->name;

open(my $map_image, ">", "$map_name.png")
    or die "ERROR: Can't open [$map_name.png]: $!";
binmode($map_image);
print $map_image $hannover->as_png;
close($map_image);

# vim: expandtab shiftwidth=4
