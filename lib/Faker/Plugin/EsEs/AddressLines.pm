package Faker::Plugin::EsEs::AddressLines;

use 5.018;

use strict;
use warnings;

use Venus::Class 'base';

base 'Faker::Plugin::EsEs';

# METHODS

sub execute {
  my ($self, $data) = @_;

  return $self->process_markers(
    $self->process_format(
      $self->faker->random->select(data_for_address_lines()),
    ),
    'newlines',
  );
}

sub data_for_address_lines {
  state $address_lines = [
    '{{address_street_address}}\n{{address_city_name}}, {{address_state_name}} {{address_postal_code}}'
  ]
}

1;
