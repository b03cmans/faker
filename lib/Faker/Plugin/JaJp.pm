package Faker::Plugin::JaJp;

use 5.018;

use strict;
use warnings;

use Venus::Class 'base';

base 'Faker::Plugin';

# MODIFIERS

sub new {
  my ($self, @args) = @_;

  $self = $self->SUPER::new(@args);

  require Faker;

  my $caches = $self->faker->caches;

  $self->faker(Faker->new('ja-jp'));

  $self->faker->caches($caches) if $caches->count;

  return $self;
}

1;
