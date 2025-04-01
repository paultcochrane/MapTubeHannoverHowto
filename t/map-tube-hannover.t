use strict;
use warnings;

use Test::More;

use Map::Tube::Hannover;
use Test::Map::Tube;

my $hannover = Map::Tube::Hannover->new;

ok_map($hannover);
ok_map_functions($hannover);

my $num_lines = scalar @{$hannover->get_lines};
is( $num_lines, 3, "Number of lines in network correct" );

my @routes = (
    "Route 1|Langenhagen|Sarstedt|Langenhagen,Kabelkamp,Hauptbahnhof,Laatzen,Sarstedt",
    "Route 4|Garbsen|Roderbruch|Garbsen,Laukerthof,Kroepcke,Kantplatz,Roderbruch",
    "Route 7|Wettbergen|Misburg|Wettbergen,Allerweg,Hauptbahnhof,Vier Grenzen,Misburg"
);

ok_map_routes($hannover, \@routes);

done_testing();
