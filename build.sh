#!/bin/sh

echo Cleaning wiki
find wiki ! -name .git -delete

echo Generating docs
cd typedoc/example
../../node_modules/.bin/typedoc --theme github-wiki
cd ../..

echo Copying docs to wiki
cp -r ./typedoc/example/docs/* wiki/

echo Removing docs
rm -rf ./typedoc/example/docs
