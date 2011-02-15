#!/bin/bash

# Server-specific, I have RVM setup at the profile file:
source /etc/profile

git fetch && git reset origin/master --hard
rvm 1.9.2-head,1.8.7 exec bundle install --local && rspec spec
