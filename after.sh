#!/bin/sh

# If you would like to do some extra provisioning you may
# add any commands you wish to this file and they will
# be run after the Homestead machine is provisioned.

export PGPASSWORD=secret
export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY

# SETUP time server
sudo apt-get -y install ntp

# SETUP ms-calls
psql -hlocalhost -Uhomestead -dms_local -w -c 'create schema if not exists calls;'

# SETUP ms-data-checks
psql -hlocalhost -Uhomestead -dms_local -w -c 'create schema if not exists data_checks;'

# SETUP ms-emails
psql -hlocalhost -Uhomestead -dms_local -w -c 'create schema if not exists emails;'

# SETUP ms-five9
psql -hlocalhost -Uhomestead -dms_local -w -c 'create schema if not exists five9;'

# SETUP ms-lists
psql -hlocalhost -Uhomestead -dms_local -w -c 'create schema if not exists lists;'

# SETUP ms-sdcqas
psql -hlocalhost -Uhomestead -dms_local -w -c 'create schema if not exists sdcqas;'
