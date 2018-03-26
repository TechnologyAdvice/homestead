#!/bin/sh

# If you would like to do some extra provisioning you may
# add any commands you wish to this file and they will
# be run after the Homestead machine is provisioned.

export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY

# SETUP ms-calls
cd ~/Laravel/ms-calls
cp -p .env.example .env
echo "DB_PORT=54320" >> .env
php artisan key:generate
php artisan migrate --force
cp -p .env.example .env
php artisan key:generate

# SETUP ms-data-checks
cd ~/Laravel/ms-data-checks
cp -p .env.example .env
echo "DB_PORT=54320" >> .env
php artisan key:generate
php artisan migrate --force
cp -p .env.example .env
php artisan key:generate

# SETUP ms-emails
cd ~/Laravel/ms-emails
cp -p .env.example .env
echo "DB_PORT=54320" >> .env
php artisan key:generate
php artisan migrate --force
cp -p .env.example .env
php artisan key:generate

# SETUP ms-five9
cd ~/Laravel/ms-five9
cp -p .env.example .env
echo "DB_PORT=54320" >> .env
php artisan key:generate
php artisan migrate --force
cp -p .env.example .env
php artisan key:generate

# SETUP ms-lists
cd ~/Laravel/ms-lists
cp -p .env.example .env
echo "DB_PORT=54320" >> .env
php artisan key:generate
php artisan migrate --force
cp -p .env.example .env
php artisan key:generate

# SETUP ms-sdcqas
cd ~/Laravel/ms-sdcqas
cp -p .env.example .env
echo "DB_PORT=54320" >> .env
php artisan key:generate
php artisan migrate --force
cp -p .env.example .env
php artisan key:generate