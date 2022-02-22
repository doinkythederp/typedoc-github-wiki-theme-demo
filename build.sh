#!/bin/sh

echo Cleaning wiki
find wiki ! -name .git -delete

echo Generating docs
# Generating docs directly in the wiki directory
# would remove .git, which we don't want
./node_modules/.bin/typedoc

echo Copying docs to wiki
cp -r doc/* wiki/

echo Removing docs
rm -rf doc
