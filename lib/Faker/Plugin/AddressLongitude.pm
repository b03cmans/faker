package Faker::Plugin::AddressLongitude;

use 5.018;

use strict;
use warnings;

use Venus::Class 'base';

base 'Faker::Plugin';

# METHODS

sub execute {
  my ($self, $data) = @_;

  my $random = $self->faker->random;

  my $string = $random->select(
    [int($random->make(90000000)), int($random->make(-90000000))]
  );

  $string =~ s/\d*(\d\d)(\d{6})$/$1.$2/;

  return $string;
}

1;
