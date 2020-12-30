## ramverk1-forecaster-moduleBTH ##
Forecaster- moved from main branch to a module-based build.

[![Travis CI](https://travis-ci.com/Lundmarks/ramverk1-forecaster-modulebth.svg?branch=master)](https://travis-ci.com/Lundmarks/ramverk1-forecaster-modulebth) [![CircleCI](https://circleci.com/gh/Lundmarks/ramverk1-forecaster-modulebth.svg?style=svg)](https://app.circleci.com/pipelines/github/Lundmarks/ramverk1-forecaster-modulebth) [![Scrutinizer Build Status](https://scrutinizer-ci.com/g/Lundmarks/ramverk1-forecaster-modulebth/badges/build.png?b=master)](https://scrutinizer-ci.com/g/Lundmarks/ramverk1-forecaster-modulebth/build-status/master) [![Scrutinizer Code Quality](https://scrutinizer-ci.com/g/Lundmarks/ramverk1-forecaster-modulebth/badges/quality-score.png?b=master)](https://scrutinizer-ci.com/g/Lundmarks/ramverk1-forecaster-modulebth/?branch=master) [![SymfonyInsight](https://insight.symfony.com/projects/9a5829e9-1c78-425f-80db-65b145a4f342/mini.svg)](https://insight.symfony.com/projects/9a5829e9-1c78-425f-80db-65b145a4f342) [![Code Climate Maintainability](https://api.codeclimate.com/v1/badges/7acf3e60bb41a66c18d8/maintainability)](https://codeclimate.com/github/Lundmarks/ramverk1-forecaster-modulebth/maintainability)

# FORECASTER

This module can be used for handling fetching weathers from a location (lat/long).
Places a file in models, and also integrates itself softly with $di in a simple way.

Below are discussed what files are moved, and where these are placed.

But first of all, installation instructions!

## INSTALLATION ##
-----------------------------------------------------

- Standing in root of your install-directory:

composer require lundmark/forecaster

- Files should install, and get placed in vendor/lundmark/forecaster
- After this, move files to correct locations.
- Standing in root of your install-directory:

rsync -av vendor/lundmark/forecaster/config ./config/

rsync -av vendor/lundmark/forecaster/src ./

rsync -av vendor/lundmark/forecaster/test ./

rsync -av vendor/lundmark/forecaster/content/ ./content/

-----------------------------------------------------

- Below, all files that needs to be moved are listed. These are the same as mentioned above, in the bash code.

-----------------------------------------------------

# Files that needs to be moved

## Standing in me/module/testme/ ##

- FROM
vendor/lundmark/forecaster/config/di/forecaster.php
- TO
config/di/
-----------------------------------------------------
- FROM
vendor/lundmark/forecaster/config/apikeys.php
- TO
config/
-----------------------------------------------------
- FROM
vendor/lundmark/forecaster/src/Models/Forecaster.php
- TO
src/Models/
-----------------------------------------------------
- FROM
vendor/lundmark/forecaster/test/Models/ForecasterTest.php
- TO
test/Models/
-----------------------------------------------------
- FROM
vendor/lundmark/forecaster/test/Models/ForecasterTest.php
- TO
test/Models/
-----------------------------------------------------

# Resulting commands
(These can also be ran as bash commands, to move files to necessary locations.)

## Move config file for DI, and api-key ##
rsync -av vendor/lundmark/forecaster/config ./
## Move main source files ##
rsync -av vendor/lundmark/forecaster/src ./
## Move unittest-related files ##
rsync -av vendor/lundmark/forecaster/test ./
## Move documentation-file ##
rsync -av vendor/lundmark/forecaster/content/ ./content/
