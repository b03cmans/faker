package Faker::Plugin::InternetIpAddress;

use 5.018;

use strict;
use warnings;

use Venus::Class 'base';

base 'Faker::Plugin';

# METHODS

sub execute {
  my ($self, $data) = @_;

  return $self->faker->random->bit
    ? $self->faker->internet_ip_address_v4
    : $self->faker->internet_ip_address_v6;
}

1;
