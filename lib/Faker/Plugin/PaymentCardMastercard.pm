package Faker::Plugin::PaymentCardMastercard;

use 5.018;

use strict;
use warnings;

use Venus::Class 'base';

base 'Faker::Plugin';

# METHODS

sub execute {
  my ($self, $data) = @_;

  return $self->process_markers(
    $self->faker->random->select(data_for_payment_card_mastercard()),
    'numbers',
  );
}

sub data_for_payment_card_mastercard {
  state $payment_card_mastercard = [
    '51#############',
    '52#############',
    '53#############',
    '54#############',
    '55#############',
  ]
}

1;
