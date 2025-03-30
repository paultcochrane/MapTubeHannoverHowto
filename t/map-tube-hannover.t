use strict;
use warnings;

use Test::More;

use Map::Tube::Hannover;
use Test::Map::Tube;

ok_map(Map::Tube::Hannover->new);
ok_map_functions(Map::Tube::Hannover->new);

done_testing();
