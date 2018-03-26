#!/bin/sh

# Run this BEFORE you run "vagrant up"

# SETUP ms-calls
cd ~/Laravel/ms-calls/
git add .
git stash
git checkout staging
git pull origin staging
composer install
npm install
npm run dev

# SETUP ms-data-checks
cd ~/Laravel/ms-data-checks/
git add .
git stash
git checkout staging
git pull origin staging
composer install
npm install
npm run dev

# SETUP ms-emails
cd ~/Laravel/ms-emails/
git add .
git stash
git checkout staging
git pull origin staging
composer install
npm install
npm run dev

# SETUP ms-five9
cd ~/Laravel/ms-five9/
git add .
git stash
git checkout staging
git pull origin staging
composer install
npm install
npm run dev

# SETUP ms-lists
cd ~/Laravel/ms-lists/
git add .
git stash
git checkout staging
git pull origin staging
composer install
npm install
npm run dev

# SETUP ms-sdcqas
cd ~/Laravel/ms-sdcqas/
git add .
git stash
git checkout staging
git pull origin staging
composer install
npm install
npm run dev