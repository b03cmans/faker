package main;

use 5.018;

use strict;
use warnings;

use Test::More;
use Venus::Test;

my $test = test(__FILE__);
my $seed = 42;

=name

Faker::Plugin::EsEs::AddressLine2

=cut

$test->for('name');

=tagline

Address Line2

=cut

$test->for('tagline');

=abstract

Address Line2 for Faker

=cut

$test->for('abstract');

=includes

method: new
method: execute

=cut

$test->for('includes');

=synopsis

  package main;

  use Faker::Plugin::EsEs::AddressLine2;

  my $plugin = Faker::Plugin::EsEs::AddressLine2->new;

  # bless(..., "Faker::Plugin::EsEs::AddressLine2")

=cut

$test->for('synopsis', sub {
  my ($tryable) = @_;
  ok my $result = $tryable->result;
  ok $result->isa('Faker::Plugin::EsEs::AddressLine2');

  $result
});

=description

This package provides methods for generating fake data for address line2.

+=encoding utf8

=cut

$test->for('description');

=inherits

Faker::Plugin::EsEs

=cut

$test->for('inherits');

=method execute

The execute method returns a returns a random fake address line2.

=signature execute

  execute(HashRef $data) (Str)

=metadata execute

{
  since => '1.10',
}

=example-1 execute

  package main;

  use Faker::Plugin::EsEs::AddressLine2;

  my $plugin = Faker::Plugin::EsEs::AddressLine2->new;

  # bless(..., "Faker::Plugin::EsEs::AddressLine2")

  # my $result = $plugin->execute;

  # '1º B';

  # my $result = $plugin->execute;

  # 'Ático 8º';

  # my $result = $plugin->execute;

  # '6º E';

=cut

$test->for('example', 1, 'execute', sub {
  my ($tryable) = @_;
  ok my $result = $tryable->result;
  ok $result->isa('Faker::Plugin::EsEs::AddressLine2');
  ok $result->faker;
  ok $result->faker->random->reseed($seed);
  ok $result->faker->random->make; # reset randomizer
  is $result->execute, '1º B';
  ok $result->faker->random->make; # reset randomizer
  is $result->execute, 'Ático 8º';
  ok $result->faker->random->make; # reset randomizer
  is $result->execute, '6º E';

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

  use Faker::Plugin::EsEs::AddressLine2;

  my $plugin = Faker::Plugin::EsEs::AddressLine2->new;

  # bless(..., "Faker::Plugin::EsEs::AddressLine2")

=cut

$test->for('example', 1, 'new', sub {
  my ($tryable) = @_;
  ok my $result = $tryable->result;
  ok $result->isa('Faker::Plugin::EsEs::AddressLine2');
  ok $result->faker;

  $result
});

# END

$test->render('lib/Faker/Plugin/EsEs/AddressLine2.pod') if $ENV{RENDER};

ok 1 and done_testing;
