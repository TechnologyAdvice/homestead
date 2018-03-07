#!/bin/sh

# Run this BEFORE you run "vagrant up"

# SETUP ms-lists
cd ~/Laravel/ms-lists/
git add .
git stash
git checkout staging
git pull origin staging
composer install
npm install
npm run prod
