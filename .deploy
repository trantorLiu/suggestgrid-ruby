#! /bin/bash

GEMSPEC=$(find . -name "*.gemspec")

gem build $GEMSPEC

GEM=$(find . -name "*.gem")

./.rubygems_push.exp $GEM
