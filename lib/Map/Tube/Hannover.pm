package Map::Tube::Hannover;

use 5.006;
use strict;
use warnings;

use Moo;
use File::Share qw(dist_file);

with 'Map::Tube';

=head1 NAME

Map::Tube::Hannover - The great new Map::Tube::Hannover!

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

Quick summary of what the module does.

Perhaps a little code snippet.

    use Map::Tube::Hannover;

    my $foo = Map::Tube::Hannover->new();
    ...

=head1 EXPORT

A list of functions that can be exported.  You can delete this section
if you don't export anything, such as for a purely object-oriented module.

=head1 SUBROUTINES/METHODS

=cut

has json => (
    is => 'ro',
    default => sub {
        return dist_file('Map-Tube-Hannover', 'hannover-map.json')
    }
);

=head1 AUTHOR

Paul Cochrane, C<< <ptc at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-map-tube-hannover at rt.cpan.org>, or through
the web interface at L<https://rt.cpan.org/NoAuth/ReportBug.html?Queue=Map-Tube-Hannover>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Map::Tube::Hannover


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<https://rt.cpan.org/NoAuth/Bugs.html?Dist=Map-Tube-Hannover>

=item * CPAN Ratings

L<https://cpanratings.perl.org/d/Map-Tube-Hannover>

=item * Search CPAN

L<https://metacpan.org/release/Map-Tube-Hannover>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

This software is Copyright (c) 2025 by Paul Cochrane.

This is free software, licensed under:

  The Artistic License 2.0 (GPL Compatible)


=cut

1; # End of Map::Tube::Hannover
