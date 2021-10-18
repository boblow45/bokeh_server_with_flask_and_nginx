#!/bin/bash

# envsubst is recommended on https://hub.docker.com/_/nginx/ but there is no way to escape characters...
# It replaces all nginx variables like "$host"
# perl one liner taken from:
# http://stackoverflow.com/questions/2914220/bash-templating-how-to-build-configuration-files-from-templates-with-bash/25019138#25019138
perl -p -i -e 's/\$\{([^}]+)\}/defined $ENV{$1} ? $ENV{$1} : $&/eg' < /etc/nginx/conf.d/mysite.template > /etc/nginx/conf.d/default.conf
