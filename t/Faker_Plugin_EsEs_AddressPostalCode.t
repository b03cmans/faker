package main;

use 5.018;

use strict;
use warnings;

use Test::More;
use Venus::Test;

my $test = test(__FILE__);
my $seed = 42;

=name

Faker::Plugin::EsEs::AddressPostalCode

=cut

$test->for('name');

=tagline

Address Postal Code

=cut

$test->for('tagline');

=abstract

Address Postal Code for Faker

=cut

$test->for('abstract');

=includes

method: new
method: execute

=cut

$test->for('includes');

=synopsis

  package main;

  use Faker::Plugin::EsEs::AddressPostalCode;

  my $plugin = Faker::Plugin::EsEs::AddressPostalCode->new;

  # bless(..., "Faker::Plugin::EsEs::AddressPostalCode")

=cut

$test->for('synopsis', sub {
  my ($tryable) = @_;
  ok my $result = $tryable->result;
  ok $result->isa('Faker::Plugin::EsEs::AddressPostalCode');

  $result
});

=description

This package provides methods for generating fake data for address postal code.

+=encoding utf8

=cut

$test->for('description');

=inherits

Faker::Plugin::EsEs

=cut

$test->for('inherits');

=method execute

The execute method returns a returns a random fake address postal code.

=signature execute

  execute(HashRef $data) (Str)

=metadata execute

{
  since => '1.10',
}

=example-1 execute

  package main;

  use Faker::Plugin::EsEs::AddressPostalCode;

  my $plugin = Faker::Plugin::EsEs::AddressPostalCode->new;

  # bless(..., "Faker::Plugin::EsEs::AddressPostalCode")

  # my $result = $plugin->execute;

  # '31408';

  # my $result = $plugin->execute;

  # '46845';

  # my $result = $plugin->execute;

  # '07694';

=cut

$test->for('example', 1, 'execute', sub {
  my ($tryable) = @_;
  ok my $result = $tryable->result;
  ok $result->isa('Faker::Plugin::EsEs::AddressPostalCode');
  ok $result->faker;
  ok $result->faker->random->reseed($seed);
  ok $result->faker->random->make; # reset randomizer
  is $result->execute, '31408';
  ok $result->faker->random->make; # reset randomizer
  is $result->execute, '46845';
  ok $result->faker->random->make; # reset randomizer
  is $result->execute, '07694';

  $result
});

=method new

The new method returns a new instance of the class.

=signature new

  new(HashRef $data) (Plugin)

=metadata new

{
  since => '1.10',
}

=example-1 new

  package main;

  use Faker::Plugin::EsEs::AddressPostalCode;

  my $plugin = Faker::Plugin::EsEs::AddressPostalCode->new;

  # bless(..., "Faker::Plugin::EsEs::AddressPostalCode")

=cut

$test->for('example', 1, 'new', sub {
  my ($tryable) = @_;
  ok my $result = $tryable->result;
  ok $result->isa('Faker::Plugin::EsEs::AddressPostalCode');
  ok $result->faker;

  $result
});

# END

$test->render('lib/Faker/Plugin/EsEs/AddressPostalCode.pod') if $ENV{RENDER};

ok 1 and done_testing;
