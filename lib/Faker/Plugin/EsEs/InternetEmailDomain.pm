package Faker::Plugin::EsEs::InternetEmailDomain;

use 5.018;

use strict;
use warnings;

use Venus::Class 'base';

base 'Faker::Plugin::EsEs';

# METHODS

sub execute {
  my ($self, $data) = @_;

  return $self->faker->random->select(data_for_internet_email_domain());
}

sub data_for_internet_email_domain {
  state $internet_email_domain = [
    'gmail.com',
    'hotmail.com',
    'hotmail.es',
    'yahoo.com',
    'yahoo.es',
    'live.com',
    'hispavista.com',
    'latinmail.com',
    'terra.com',
  ]
}

1;
