#!/bin/sh

# If you would like to do some extra provisioning you may
# add any commands you wish to this file and they will
# be run after the Homestead machine is provisioned.

export PGPASSWORD=secret
export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY

# SETUP ms-calls
psql -hlocalhost -Uhomestead -dms_local -w -c 'create schema if not exists calls;'
cd laravel/ms-calls
cp -p .env.example .env
composer install --no-progress
php artisan key:generate
php artisan migrate --force

# SETUP ms-data-checks
psql -hlocalhost -Uhomestead -dms_local -w -c 'create schema if not exists data_checks;'
cd laravel/ms-data-checks
cp -p .env.example .env
composer install --no-progress
php artisan key:generate
php artisan migrate --force

# SETUP ms-emails
psql -hlocalhost -Uhomestead -dms_local -w -c 'create schema if not exists emails;'
cd laravel/ms-emails
cp -p .env.example .env
composer install --no-progress
php artisan key:generate
php artisan migrate --force

# SETUP ms-five9
psql -hlocalhost -Uhomestead -dms_local -w -c 'create schema if not exists five9;'
cd laravel/ms-five9
cp -p .env.example .env
composer install --no-progress
php artisan key:generate
php artisan migrate --force

# SETUP ms-lists
psql -hlocalhost -Uhomestead -dms_local -w -c 'create schema if not exists lists;'
cd laravel/ms-lists
cp -p .env.example .env
composer install --no-progress
php artisan key:generate
php artisan migrate --force

# SETUP ms-sdcqas
psql -hlocalhost -Uhomestead -dms_local -w -c 'create schema if not exists sdcqas;'
cd laravel/ms-sdcqas
cp -p .env.example .env
composer install --no-progress
php artisan key:generate
php artisan migrate --force