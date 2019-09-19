#!/usr/bin/env bash

git remote set origin https://${GITHUB_TOKEN}@github.com/erikhofer/gradle-starter.git > /dev/null 2>&1
git config --global user.email "travis@travis-ci.org"
git config --global user.name "Travis CI"
git checkout $TRAVIS_BRANCH
./gradlew release -Prelease.useAutomaticVersion=true -Prelease.releaseVersion=$RELEASE_VERSION