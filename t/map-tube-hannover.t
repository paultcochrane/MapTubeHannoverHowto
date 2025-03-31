use strict;
use warnings;

use Test::More;

use Map::Tube::Hannover;
use Test::Map::Tube;

my $hannover = Map::Tube::Hannover->new;

ok_map($hannover);
ok_map_functions($hannover);

done_testing();
