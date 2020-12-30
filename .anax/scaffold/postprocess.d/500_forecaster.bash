#!/usr/bin/env bash
#
# Move config file for DI, and api-key
rsync -av vendor/Lundmark/forecaster/config ./
# Move main source files
rsync -av vendor/Lundmark/forecaster/src ./
# Move unittest-related files
rsync -av vendor/Lundmark/forecaster/test ./
