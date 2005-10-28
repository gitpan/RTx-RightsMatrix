use lib qw(.);
use inc::Module::Install;

$ENV{'WITH_SUBDIRS'} = 'lib,html';
RTx			('RightsMatrix');
author			('Todd Chapman <todd@chaka.net>');
license			('perl');

requires		('RT', 3.4);
build_requires		('Test::More');

my ($lp) = $INC{'RT.pm'} =~ /^(.*)[\\\/]/;
my $lib_path = join( ' ', "$RT::LocalPath/lib", $lp );


&WriteAll;

