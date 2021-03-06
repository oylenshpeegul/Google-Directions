use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Google::Directions',
    AUTHOR              => q{Robin Clarke <perl@robinclarke.net>},
    VERSION_FROM        => 'lib/Google/Directions/Client.pm',
    ABSTRACT_FROM       => 'lib/Google/Directions/Client.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
	'Carp'				=> 0,
	'Encode'			=> 0,
	'JSON'				=> 0,
	'LWP::UserAgent'		=> 0,
	'Moose'				=> 0,
	'Moose::Util::TypeConstraints'	=> 0,
	'MooseX::Aliases'		=> 0,
	'MooseX::Params::Validate'	=> 0,
	'Test::More'			=> 0,
	'Try::Tiny'			=> 0,
	'URL::Encode'			=> 0,
    },
    (! eval { ExtUtils::MakeMaker->VERSION(6.46) } ? () :
     (META_ADD => {
      resources => {
      homepage   => 'https://github.com/robin13/Google-Directions',
      repository => 'https://github.com/robin13/Google-Directions',
      bugtracker => 'https://github.com/robin13/Google-Directions/issues',
      },
      })
    ),
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Google-Directions-*' },
);
