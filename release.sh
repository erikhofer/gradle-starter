#!/usr/bin/env bash

git checkout $TRAVIS_BRANCH
./gradlew release -Prelease.useAutomaticVersion=true -Prelease.releaseVersion=$RELEASE_VERSION