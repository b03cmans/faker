package Faker::Plugin::EsEs::JargonTermPrefix;

use 5.018;

use strict;
use warnings;

use Venus::Class 'base';

base 'Faker::Plugin::EsEs';

# METHODS

sub execute {
  my ($self, $data) = @_;

  return $self->faker->random->select(data_for_jargon_term_prefix());
}

sub data_for_jargon_term_prefix {
  state $jargon_term_prefix = [
    '24 hour',
    '24/7',
    '3rd-generation',
    '4th-generation',
    '5th-generation',
    '6th-generation',
    'actuating',
    'analyzing',
    'assymetric',
    'asynchronous',
    'attitude-oriented',
    'background',
    'bandwidth-monitored',
    'bi-directional',
    'bifurcated',
    'bottom-line',
    'clear-thinking',
    'client-driven',
    'client-server',
    'coherent',
    'cohesive',
    'composite',
    'context-sensitive',
    'contextually-based',
    'content-based',
    'dedicated',
    'demand-driven',
    'didactic',
    'directional',
    'discrete',
    'disintermediate',
    'dynamic',
    'eco-centric',
    'empowering',
    'encompassing',
    'even-keeled',
    'executive',
    'explicit',
    'exuding',
    'fault-tolerant',
    'foreground',
    'fresh-thinking',
    'full-range',
    'global',
    'grid-enabled',
    'heuristic',
    'high-level',
    'holistic',
    'homogeneous',
    'human-resource',
    'hybrid',
    'impactful',
    'incremental',
    'intangible',
    'interactive',
    'intermediate',
    'leadingedge',
    'local',
    'logistical',
    'maximized',
    'methodical',
    'mission-critical',
    'mobile',
    'modular',
    'motivating',
    'multimedia',
    'multi-state',
    'multi-tasking',
    'national',
    'needs-based',
    'neutral',
    'next-generation',
    'non-volatile',
    'object-oriented',
    'optimal',
    'optimizing',
    'radical',
    'real-time',
    'reciprocal',
    'regional',
    'responsive',
    'scalable',
    'secondary',
    'solution-oriented',
    'stable',
    'static',
    'systematic',
    'systemic',
    'system-worthy',
    'tangible',
    'tertiary',
    'transitional',
    'uniform',
    'upward-trending',
    'user-facing',
    'value-added',
    'web-enabled',
    'well-modulated',
    'zero-administration',
    'zero-defect',
    'zero-tolerance',
  ]
}

1;
