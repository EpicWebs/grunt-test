#!/bin/sh
#
# this pre-commit script uses compass to compile and compress stylesheet partials
echo "Compiling SASS";
compass compile sass/ -s compact --force --no-line-comments
wait $!
git add stylesheets/