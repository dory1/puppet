#!/bin/bash -x

HOSTNAME=`hostname -f`
ENV=`curl -s -k -u api:apiuser -H "Accept: version=2,application/json" https://ptkpl-foreman.bezeqint.net/api/hosts/$HOSTNAME | sed -e 's/.*environment_name":"\([^"]*\)".*/\1/'`

cat > /etc/puppet/puppet.conf << EOF

[main]
vardir = /var/lib/puppet
logdir = /var/log/puppet
rundir = /var/run/puppet
ssldir = \$vardir/ssl

[agent]
pluginsync      = true
report          = true
ignoreschedules = true
daemon          = true
ca_server       = ptkpl-foreman.bezeqint.net
environment     = 
server          = ptkpl-foreman.bezeqint.net
EOF

sed -i "s/environment     =/environment     = $ENV/g" /etc/puppet/puppet.conf
