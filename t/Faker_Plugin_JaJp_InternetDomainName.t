package main;

use 5.018;

use strict;
use warnings;

use Test::More;
use Venus::Test;

my $test = test(__FILE__);
my $seed = 42;

=name

Faker::Plugin::JaJp::InternetDomainName

=cut

$test->for('name');

=tagline

Internet Domain Name

=cut

$test->for('tagline');

=abstract

Internet Domain Name for Faker

=cut

$test->for('abstract');

=includes

method: new
method: execute

=cut

$test->for('includes');

=synopsis

  package main;

  use Faker::Plugin::JaJp::InternetDomainName;

  my $plugin = Faker::Plugin::JaJp::InternetDomainName->new;

  # bless(..., "Faker::Plugin::JaJp::InternetDomainName")

=cut

$test->for('synopsis', sub {
  my ($tryable) = @_;
  ok my $result = $tryable->result;
  ok $result->isa('Faker::Plugin::JaJp::InternetDomainName');

  $result
});

=description

This package provides methods for generating fake data for internet domain name.

+=encoding utf8

=cut

$test->for('description');

=inherits

Faker::Plugin::JaJp

=cut

$test->for('inherits');

=method execute

The execute method returns a returns a random fake internet domain name.

=signature execute

  execute(HashRef $data) (Str)

=metadata execute

{
  since => '1.10',
}

=example-1 execute

  package main;

  use Faker::Plugin::JaJp::InternetDomainName;

  my $plugin = Faker::Plugin::JaJp::InternetDomainName->new;

  # bless(..., "Faker::Plugin::JaJp::InternetDomainName")

  # my $result = $plugin->execute;

  # 'sasada.jp';

  # my $result = $plugin->execute;

  # 'murayama.net';

  # my $result = $plugin->execute;

  # 'nagisa.info';

=cut

$test->for('example', 1, 'execute', sub {
  my ($tryable) = @_;
  ok my $result = $tryable->result;
  ok $result->isa('Faker::Plugin::JaJp::InternetDomainName');
  ok $result->faker;
  ok $result->faker->random->reseed($seed);
  ok $result->faker->random->make; # reset randomizer
  is $result->execute, 'sasada.jp';
  ok $result->faker->random->make; # reset randomizer
  is $result->execute, 'murayama.net';
  ok $result->faker->random->make; # reset randomizer
  is $result->execute, 'nagisa.info';

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

  use Faker::Plugin::JaJp::InternetDomainName;

  my $plugin = Faker::Plugin::JaJp::InternetDomainName->new;

  # bless(..., "Faker::Plugin::JaJp::InternetDomainName")

=cut

$test->for('example', 1, 'new', sub {
  my ($tryable) = @_;
  ok my $result = $tryable->result;
  ok $result->isa('Faker::Plugin::JaJp::InternetDomainName');
  ok $result->faker;

  $result
});

# END

$test->render('lib/Faker/Plugin/JaJp/InternetDomainName.pod') if $ENV{RENDER};

ok 1 and done_testing;
