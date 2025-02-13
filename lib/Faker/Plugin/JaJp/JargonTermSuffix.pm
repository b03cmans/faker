package Faker::Plugin::JaJp::JargonTermSuffix;

use 5.018;

use strict;
use warnings;

use Venus::Class 'base';

base 'Faker::Plugin::JaJp';

# METHODS

sub execute {
  my ($self, $data) = @_;

  return $self->faker->random->select(data_for_jargon_term_suffix());
}

sub data_for_jargon_term_suffix {
  state $jargon_term_suffix = [
    '能力',
    'アクセス',
    'アダプタ',
    'アルゴリズム',
    '同盟',
    'アナライザー',
    'アプリケーション',
    'アプローチ',
    'アーキテクチャ',
    'アーカイブ',
    '人工知能',
  ]
}

1;
