use strict;
use warnings;

use lib qw(lib);

use Map::Tube::Hannover;


# grab the start and end stations of the route
my $from = $ARGV[0];
my $to = $ARGV[1];

# show how to get from one to the other
my $hannover = Map::Tube::Hannover->new;
print $hannover->get_shortest_route($from, $to), "\n";

# vim: expandtab shiftwidth=4
