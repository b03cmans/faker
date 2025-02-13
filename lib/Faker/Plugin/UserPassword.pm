package Faker::Plugin::UserPassword;

use 5.018;

use strict;
use warnings;

use Venus::Class 'base';

base 'Faker::Plugin';

# METHODS

sub execute {
  my ($self, $data) = @_;

  my $random = $self->faker->random;

  return $random->collect($random->range(12,20), 'character');
}

1;
