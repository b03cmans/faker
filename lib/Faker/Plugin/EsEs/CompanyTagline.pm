package Faker::Plugin::EsEs::CompanyTagline;

use 5.018;

use strict;
use warnings;

use Venus::Class 'base';

base 'Faker::Plugin::EsEs';

# METHODS

sub execute {
  my ($self, $data) = @_;

  return join ' ',
    $self->faker->jargon_verb,
    $self->faker->jargon_adjective,
    $self->faker->jargon_noun,
}

1;
