package Faker::Plugin::JaJp::TelephoneNumber;

use 5.018;

use strict;
use warnings;

use Venus::Class 'base';

base 'Faker::Plugin::JaJp';

# METHODS

sub execute {
  my ($self, $data) = @_;

  return $self->process_markers(
    $self->faker->random->select(data_for_telephone_number()),
    'numbers',
  );
}

sub data_for_telephone_number {
  state $telephone_number = [
    '080-####-####',
    '090-####-####',
    '0#-####-####',
    '0####-#-####',
    '0###-##-####',
    '0##-###-####',
    '0##0-###-###',
  ]
}

1;
