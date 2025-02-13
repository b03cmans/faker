package main;

use 5.018;

use strict;
use warnings;

use Test::More;
use Venus::Test;

my $test = test(__FILE__);
my $seed = 42;

=name

Faker::Plugin::ColorRgbColorsetCss

=cut

$test->for('name');

=tagline

Color Rgb Colorset Css

=cut

$test->for('tagline');

=abstract

Color Rgb Colorset Css for Faker

=cut

$test->for('abstract');

=includes

method: new
method: execute

=cut

$test->for('includes');

=synopsis

  package main;

  use Faker::Plugin::ColorRgbColorsetCss;

  my $plugin = Faker::Plugin::ColorRgbColorsetCss->new;

  # bless(..., "Faker::Plugin::ColorRgbColorsetCss")

=cut

$test->for('synopsis', sub {
  my ($tryable) = @_;
  ok my $result = $tryable->result;
  ok $result->isa('Faker::Plugin::ColorRgbColorsetCss');

  $result
});

=description

This package provides methods for generating fake data for color rgb colorset css.

+=encoding utf8

=cut

$test->for('description');

=inherits

Faker::Plugin

=cut

$test->for('inherits');

=method execute

The execute method returns a returns a random fake color rgb colorset css.

=signature execute

  execute(HashRef $data) (Str)

=metadata execute

{
  since => '1.10',
}

=example-1 execute

  package main;

  use Faker::Plugin::ColorRgbColorsetCss;

  my $plugin = Faker::Plugin::ColorRgbColorsetCss->new;

  # bless(..., "Faker::Plugin::ColorRgbColorsetCss")

  # my $result = $plugin->execute;

  # "rgb(108, 30, 104)";

  # my $result = $plugin->execute;

  # "rgb(122, 147, 147)";

  # my $result = $plugin->execute;

  # "rgb(147, 224, 22)";

=cut

$test->for('example', 1, 'execute', sub {
  my ($tryable) = @_;
  ok my $result = $tryable->result;
  ok $result->isa('Faker::Plugin::ColorRgbColorsetCss');
  ok $result->faker;
  ok $result->faker->random->reseed($seed);
  ok $result->faker->random->make; # reset randomizer
  is $result->execute, "rgb(108, 30, 104)";
  ok $result->faker->random->make; # reset randomizer
  is $result->execute, "rgb(122, 147, 147)";
  ok $result->faker->random->make; # reset randomizer
  is $result->execute, "rgb(147, 224, 22)";

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

  use Faker::Plugin::ColorRgbColorsetCss;

  my $plugin = Faker::Plugin::ColorRgbColorsetCss->new;

  # bless(..., "Faker::Plugin::ColorRgbColorsetCss")

=cut

$test->for('example', 1, 'new', sub {
  my ($tryable) = @_;
  ok my $result = $tryable->result;
  ok $result->isa('Faker::Plugin::ColorRgbColorsetCss');
  ok $result->faker;

  $result
});

# END

$test->render('lib/Faker/Plugin/ColorRgbColorsetCss.pod') if $ENV{RENDER};

ok 1 and done_testing;
