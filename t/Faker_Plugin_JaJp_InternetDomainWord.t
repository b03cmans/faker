package main;

use 5.018;

use strict;
use warnings;

use Test::More;
use Venus::Test;

my $test = test(__FILE__);
my $seed = 42;

=name

Faker::Plugin::JaJp::InternetDomainWord

=cut

$test->for('name');

=tagline

Internet Domain Word

=cut

$test->for('tagline');

=abstract

Internet Domain Word for Faker

=cut

$test->for('abstract');

=includes

method: new
method: execute

=cut

$test->for('includes');

=synopsis

  package main;

  use Faker::Plugin::JaJp::InternetDomainWord;

  my $plugin = Faker::Plugin::JaJp::InternetDomainWord->new;

  # bless(..., "Faker::Plugin::JaJp::InternetDomainWord")

=cut

$test->for('synopsis', sub {
  my ($tryable) = @_;
  ok my $result = $tryable->result;
  ok $result->isa('Faker::Plugin::JaJp::InternetDomainWord');

  $result
});

=description

This package provides methods for generating fake data for internet domain word.

+=encoding utf8

=cut

$test->for('description');

=inherits

Faker::Plugin::JaJp

=cut

$test->for('inherits');

=method execute

The execute method returns a returns a random fake internet domain word.

=signature execute

  execute(HashRef $data) (Str)

=metadata execute

{
  since => '1.10',
}

=example-1 execute

  package main;

  use Faker::Plugin::JaJp::InternetDomainWord;

  my $plugin = Faker::Plugin::JaJp::InternetDomainWord->new;

  # bless(..., "Faker::Plugin::JaJp::InternetDomainWord")

  # my $result = $plugin->execute;

  # 'uno';

  # my $result = $plugin->execute;

  # 'yamagishi';

  # my $result = $plugin->execute;

  # 'harada';

=cut

$test->for('example', 1, 'execute', sub {
  my ($tryable) = @_;
  ok my $result = $tryable->result;
  ok $result->isa('Faker::Plugin::JaJp::InternetDomainWord');
  ok $result->faker;
  ok $result->faker->random->reseed($seed);
  ok $result->faker->random->make; # reset randomizer
  is $result->execute, 'uno';
  ok $result->faker->random->make; # reset randomizer
  is $result->execute, 'yamagishi';
  ok $result->faker->random->make; # reset randomizer
  is $result->execute, 'harada';

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

  use Faker::Plugin::JaJp::InternetDomainWord;

  my $plugin = Faker::Plugin::JaJp::InternetDomainWord->new;

  # bless(..., "Faker::Plugin::JaJp::InternetDomainWord")

=cut

$test->for('example', 1, 'new', sub {
  my ($tryable) = @_;
  ok my $result = $tryable->result;
  ok $result->isa('Faker::Plugin::JaJp::InternetDomainWord');
  ok $result->faker;

  $result
});

# END

$test->render('lib/Faker/Plugin/JaJp/InternetDomainWord.pod') if $ENV{RENDER};

ok 1 and done_testing;
