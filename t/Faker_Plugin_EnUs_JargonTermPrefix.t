package main;

use 5.018;

use strict;
use warnings;

use Test::More;
use Venus::Test;

my $test = test(__FILE__);
my $seed = 42;

=name

Faker::Plugin::EnUs::JargonTermPrefix

=cut

$test->for('name');

=tagline

Jargon Term Prefix

=cut

$test->for('tagline');

=abstract

Jargon Term Prefix for Faker

=cut

$test->for('abstract');

=includes

method: new
method: execute

=cut

$test->for('includes');

=synopsis

  package main;

  use Faker::Plugin::EnUs::JargonTermPrefix;

  my $plugin = Faker::Plugin::EnUs::JargonTermPrefix->new;

  # bless(..., "Faker::Plugin::EnUs::JargonTermPrefix")

=cut

$test->for('synopsis', sub {
  my ($tryable) = @_;
  ok my $result = $tryable->result;
  ok $result->isa('Faker::Plugin::EnUs::JargonTermPrefix');

  $result
});

=description

This package provides methods for generating fake data for jargon term prefix.

+=encoding utf8

=cut

$test->for('description');

=inherits

Faker::Plugin::EnUs

=cut

$test->for('inherits');

=method execute

The execute method returns a returns a random fake jargon term prefix.

=signature execute

  execute(HashRef $data) (Str)

=metadata execute

{
  since => '1.10',
}

=example-1 execute

  package main;

  use Faker::Plugin::EnUs::JargonTermPrefix;

  my $plugin = Faker::Plugin::EnUs::JargonTermPrefix->new;

  # bless(..., "Faker::Plugin::EnUs::JargonTermPrefix")

  # my $result = $plugin->execute;

  # "encompassing";

  # my $result = $plugin->execute;

  # "full-range";

  # my $result = $plugin->execute;

  # "systematic";

=cut

$test->for('example', 1, 'execute', sub {
  my ($tryable) = @_;
  ok my $result = $tryable->result;
  ok $result->isa('Faker::Plugin::EnUs::JargonTermPrefix');
  ok $result->faker;
  ok $result->faker->random->reseed($seed);
  ok $result->faker->random->make; # reset randomizer
  is $result->execute, "encompassing";
  ok $result->faker->random->make; # reset randomizer
  is $result->execute, "full-range";
  ok $result->faker->random->make; # reset randomizer
  is $result->execute, "systematic";

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

  use Faker::Plugin::EnUs::JargonTermPrefix;

  my $plugin = Faker::Plugin::EnUs::JargonTermPrefix->new;

  # bless(..., "Faker::Plugin::EnUs::JargonTermPrefix")

=cut

$test->for('example', 1, 'new', sub {
  my ($tryable) = @_;
  ok my $result = $tryable->result;
  ok $result->isa('Faker::Plugin::EnUs::JargonTermPrefix');
  ok $result->faker;

  $result
});

# END

$test->render('lib/Faker/Plugin/EnUs/JargonTermPrefix.pod') if $ENV{RENDER};

ok 1 and done_testing;
