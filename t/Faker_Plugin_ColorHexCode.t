package main;

use 5.018;

use strict;
use warnings;

use Test::More;
use Venus::Test;

my $test = test(__FILE__);
my $seed = 42;

=name

Faker::Plugin::ColorHexCode

=cut

$test->for('name');

=tagline

Color Hex Code

=cut

$test->for('tagline');

=abstract

Color Hex Code for Faker

=cut

$test->for('abstract');

=includes

method: new
method: execute

=cut

$test->for('includes');

=synopsis

  package main;

  use Faker::Plugin::ColorHexCode;

  my $plugin = Faker::Plugin::ColorHexCode->new;

  # bless(..., "Faker::Plugin::ColorHexCode")

=cut

$test->for('synopsis', sub {
  my ($tryable) = @_;
  ok my $result = $tryable->result;
  ok $result->isa('Faker::Plugin::ColorHexCode');

  $result
});

=description

This package provides methods for generating fake data for color hex code.

+=encoding utf8

=cut

$test->for('description');

=inherits

Faker::Plugin

=cut

$test->for('inherits');

=method execute

The execute method returns a returns a random fake color hex code.

=signature execute

  execute(HashRef $data) (Str)

=metadata execute

{
  since => '1.10',
}

=example-1 execute

  package main;

  use Faker::Plugin::ColorHexCode;

  my $plugin = Faker::Plugin::ColorHexCode->new;

  # bless(..., "Faker::Plugin::ColorHexCode")

  # my $result = $plugin->execute;

  # "#57bb49";

  # my $result = $plugin->execute;

  # "#6c1e68";

  # my $result = $plugin->execute;

  # "#db3fb2";

=cut

$test->for('example', 1, 'execute', sub {
  my ($tryable) = @_;
  ok my $result = $tryable->result;
  ok $result->isa('Faker::Plugin::ColorHexCode');
  ok $result->faker;
  ok $result->faker->random->reseed($seed);
  ok $result->faker->random->make; # reset randomizer
  is $result->execute, "#57bb49";
  ok $result->faker->random->make; # reset randomizer
  is $result->execute, "#6c1e68";
  ok $result->faker->random->make; # reset randomizer
  is $result->execute, "#db3fb2";

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

  use Faker::Plugin::ColorHexCode;

  my $plugin = Faker::Plugin::ColorHexCode->new;

  # bless(..., "Faker::Plugin::ColorHexCode")

=cut

$test->for('example', 1, 'new', sub {
  my ($tryable) = @_;
  ok my $result = $tryable->result;
  ok $result->isa('Faker::Plugin::ColorHexCode');
  ok $result->faker;

  $result
});

# END

$test->render('lib/Faker/Plugin/ColorHexCode.pod') if $ENV{RENDER};

ok 1 and done_testing;
