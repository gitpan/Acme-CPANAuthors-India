use strict;
use warnings;
use Test::More;

# generated by Dist::Zilla::Plugin::Test::PodSpelling 2.006001
use Test::Spelling 0.12;
use Pod::Wordlist;

add_stopwords(<DATA>);
all_pod_files_spelling_ok(qw( bin lib  ));
__DATA__
columbus
Shantanu
Bhadoria
shantanu
at
cpan
dott
org
lib
Acme
CPANAuthors
India
