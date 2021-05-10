#!/bin/bash

MSG=$1

PUBLISH_DIR=../mruths.github.io
PROTECTED_DIR=/tmp/mr_protected_dir

# publish the website
bundle exec jekyll build

# wipe out the protected directory
rm -rf ${PROTECTED_DIR}
# copy all the files that are protected
mkdir -p ${PROTECTED_DIR}
cat .publish_protect | xargs -n 1 -I '{}' cp '${PUBLISH_DIR}/{}' ${PROTECTED_DIR}

# Replace the entire contents
rm -rf ../mruths.github.io/*
cp -r _site/* ../mruths.github.io

# copy all protected files back
cp ${PROTECTED_DIR}/* ${PUBLISH_DIR}

# publish the new files
cd ../mruths.github.io; git add -A; git commit -a -m "${MSG}"; git push

