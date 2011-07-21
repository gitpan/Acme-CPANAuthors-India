
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'We are the CPAN Authors from India!',
  'AUTHOR' => 'Shantanu Bhadoria <shantanu at cpan dott org>',
  'BUILD_REQUIRES' => {
    'Test::More' => '0.47'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.30'
  },
  'DISTNAME' => 'Acme-CPANAuthors-India',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'Acme::CPANAuthors::India',
  'PREREQ_PM' => {
    'Acme::CPANAuthors' => '0',
    'Acme::CPANAuthors::Register' => '0'
  },
  'VERSION' => '0.05',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



