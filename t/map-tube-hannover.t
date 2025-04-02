use strict;
use warnings;

use Test::More;

use Map::Tube::Hannover;
use Test::Map::Tube;

my $hannover = Map::Tube::Hannover->new;

ok_map($hannover);
ok_map_functions($hannover);

my $num_lines = scalar @{$hannover->get_lines};
is( $num_lines, 4, "Number of lines in network correct" );

my @routes = (
    "Route 1|Langenhagen|Sarstedt|Langenhagen,Kabelkamp,Hauptbahnhof,Kroepcke,Laatzen,Sarstedt",
    "Route 4|Garbsen|Roderbruch|Garbsen,Laukerthof,Kroepcke,Kantplatz,Roderbruch",
    "Route 7|Wettbergen|Misburg|Wettbergen,Allerweg,Kroepcke,Hauptbahnhof,Vier Grenzen,Misburg",
    "Route 10|Ahlem|Hauptbahnhof/ZOB|Ahlem,Leinaustrasse,Hauptbahnhof/ZOB",
);

ok_map_routes($hannover, \@routes);

done_testing();
