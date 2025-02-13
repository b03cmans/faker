package Faker::Plugin::PaymentCardExpiration;

use 5.018;

use strict;
use warnings;

use Venus::Class 'base';

base 'Faker::Plugin';

# METHODS

sub execute {
  my ($self, $data) = @_;

  my $pad = $self->faker->random->range(1,3);
  my $month = sprintf('%02d', $self->faker->random->range(1,12));
  my $year = sprintf('%02d', ((localtime)[5] % 100) + $pad);

  return "$month/$year";
}

1;
