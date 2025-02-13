package Faker::Plugin::JaJp::AddressPostalCode;

use 5.018;

use strict;
use warnings;

use Venus::Class 'base';

base 'Faker::Plugin::JaJp';

# METHODS

sub execute {
  my ($self, $data) = @_;

  my $random = $self->faker->random;

  return $random->range(100, 999) . $random->range(1000, 9999);
}

1;
