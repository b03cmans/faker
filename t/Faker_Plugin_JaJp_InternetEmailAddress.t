package main;

use 5.018;

use strict;
use warnings;

use Test::More;
use Venus::Test;

my $test = test(__FILE__);
my $seed = 42;

=name

Faker::Plugin::JaJp::InternetEmailAddress

=cut

$test->for('name');

=tagline

Internet Email Address

=cut

$test->for('tagline');

=abstract

Internet Email Address for Faker

=cut

$test->for('abstract');

=includes

method: new
method: execute

=cut

$test->for('includes');

=synopsis

  package main;

  use Faker::Plugin::JaJp::InternetEmailAddress;

  my $plugin = Faker::Plugin::JaJp::InternetEmailAddress->new;

  # bless(..., "Faker::Plugin::JaJp::InternetEmailAddress")

=cut

$test->for('synopsis', sub {
  my ($tryable) = @_;
  ok my $result = $tryable->result;
  ok $result->isa('Faker::Plugin::JaJp::InternetEmailAddress');

  $result
});

=description

This package provides methods for generating fake data for internet email address.

+=encoding utf8

=cut

$test->for('description');

=inherits

Faker::Plugin::JaJp

=cut

$test->for('inherits');

=method execute

The execute method returns a returns a random fake internet email address.

=signature execute

  execute(HashRef $data) (Str)

=metadata execute

{
  since => '1.10',
}

=example-1 execute

  package main;

  use Faker::Plugin::JaJp::InternetEmailAddress;

  my $plugin = Faker::Plugin::JaJp::InternetEmailAddress->new;

  # bless(..., "Faker::Plugin::JaJp::InternetEmailAddress")

  # my $result = $plugin->execute;

  # 'tomoya45@sugiyama.jp';

  # my $result = $plugin->execute;

  # 'nagisa.naoto@saito.com';

  # my $result = $plugin->execute;

  # 'skiriyama0225@gmail.com';

=cut

$test->for('example', 1, 'execute', sub {
  my ($tryable) = @_;
  ok my $result = $tryable->result;
  ok $result->isa('Faker::Plugin::JaJp::InternetEmailAddress');
  ok $result->faker;
  ok $result->faker->random->reseed($seed);
  ok $result->faker->random->make; # reset randomizer
  is $result->execute, 'tomoya45@sugiyama.jp';
  ok $result->faker->random->make; # reset randomizer
  is $result->execute, 'nagisa.naoto@saito.com';
  ok $result->faker->random->make; # reset randomizer
  is $result->execute, 'skiriyama0225@gmail.com';

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

  use Faker::Plugin::JaJp::InternetEmailAddress;

  my $plugin = Faker::Plugin::JaJp::InternetEmailAddress->new;

  # bless(..., "Faker::Plugin::JaJp::InternetEmailAddress")

=cut

$test->for('example', 1, 'new', sub {
  my ($tryable) = @_;
  ok my $result = $tryable->result;
  ok $result->isa('Faker::Plugin::JaJp::InternetEmailAddress');
  ok $result->faker;

  $result
});

# END

$test->render('lib/Faker/Plugin/JaJp/InternetEmailAddress.pod') if $ENV{RENDER};

ok 1 and done_testing;
