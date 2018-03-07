#!/bin/sh

# If you would like to do some extra provisioning you may
# add any commands you wish to this file and they will
# be run after the Homestead machine is provisioned.

export PGPASSWORD=secret

# SETUP ms-lists
psql -hlocalhost -Uhomestead -dms_local -w -c 'create schema if not exists lists;'
cd laravel/ms-lists
cp -p .env.example .env
composer install --no-progress
php artisan key:generate
php artisan migrate --force