class bezeqintsec::puppetconf {

       file { '/tmp/puppet.sh':
          ensure => present,
          owner => 'root',
          group => 'root',
          mode => '0755',
          source => 'puppet:///modules/bezeqintsec/puppet.sh',
       }
       exec { '/tmp/puppet.sh': require => File['/tmp/puppet.sh'] }

}
