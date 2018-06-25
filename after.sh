#!/bin/sh

# If you would like to do some extra provisioning you may
# add any commands you wish to this file and they will
# be run after the Homestead machine is provisioned.

export PGPASSWORD=secret
export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY

# SETUP time server
sudo apt-get -y install ntp
sudo service ntp restart

# SETUP ms-accounts
psql -hlocalhost -Uhomestead -dms_local -w -c 'create schema if not exists accounts;'

# SETUP ms-calls
psql -hlocalhost -Uhomestead -dms_local -w -c 'create schema if not exists calls;'

# SETUP ms-data-checks
psql -hlocalhost -Uhomestead -dms_local -w -c 'create schema if not exists data_checks;'

# SETUP ms-emails
psql -hlocalhost -Uhomestead -dms_local -w -c 'create schema if not exists emails;'

# SETUP ms-five9
psql -hlocalhost -Uhomestead -dms_local -w -c 'create schema if not exists five9;'

# SETUP ms-geo
sudo apt-get -y -q install postgis
psql -hlocalhost -Uhomestead -dms_local -w -c 'create schema if not exists geo;'
psql -hlocalhost -Uhomestead -dms_local -w -c 'create extension postgis schema public;'

# SETUP ms-leads
psql -hlocalhost -Uhomestead -dms_local -w -c 'create schema if not exists leads;'

# SETUP ms-lists
psql -hlocalhost -Uhomestead -dms_local -w -c 'create schema if not exists lists;'

# SETUP ms-sdcqas
psql -hlocalhost -Uhomestead -dms_local -w -c 'create schema if not exists sdcqas;'

# SETUP ms-template
psql -hlocalhost -Uhomestead -dms_local -w -c 'create schema if not exists template;'
