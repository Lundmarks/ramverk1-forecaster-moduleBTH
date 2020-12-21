# ramverk1-forecaster-moduleBTH
Forecaster- moved from main branch to a module-based build.

## FORECASTER ##

This module can be used for handling fetching weathers from a location (lat/long).
Places a file in models, and also integrates itself softly with $di in a simple way.

Below are discussed what files are moved, and where these are placed.

But first of all, installation instructions!

## INSTALLATION ##
-----------------------------------------------------

- Standing in root of your install-directory:
composer require lundmark/forecaster

- Files should install, and get placed in vendor/Lundmark/forecaster
- After this, move files to correct locations.
- Standing in root of your install-directory:
rsync -av vendor/Lundmark/forecaster/config ./
rsync -av vendor/Lundmark/forecaster/src ./
rsync -av vendor/Lundmark/forecaster/test ./
rsync -av vendor/Lundmark/forecaster/content/ ./content/

-----------------------------------------------------

- Below, all files that needs to be moved are listed. These are the same as mentioned above, in the bash code.

-----------------------------------------------------

## Files that needs to be moved ##

# Standing in me/module/testme/
-----------------------------------------------------
# FROM
vendor/Lundmark/forecaster/config/di/forecaster.php
# TO
config/di/
-----------------------------------------------------
# FROM
vendor/Lundmark/forecaster/config/apikeys.php
# TO
config/
-----------------------------------------------------
# FROM
vendor/Lundmark/forecaster/src/Models/Forecaster.php
# TO
src/Models/
* Create folder: Models
-----------------------------------------------------
# FROM
vendor/Lundmark/forecaster/test/Models/ForecasterTest.php
# TO
test/Models/
* Create folder: Models
-----------------------------------------------------
# FROM
vendor/Lundmark/forecaster/test/Models/ForecasterTest.php
# TO
test/Models/
* Create folder: Models
-----------------------------------------------------

## Resulting commands ##
(These can also be ran as bash commands, to move files to necessary locations.)

# Move config file for DI, and api-key
rsync -av vendor/Lundmark/forecaster/config ./
# Move main source files
rsync -av vendor/Lundmark/forecaster/src ./
# Move unittest-related files
rsync -av vendor/Lundmark/forecaster/test ./
# Move documentation-file
rsync -av vendor/Lundmark/forecaster/content/ ./content/
