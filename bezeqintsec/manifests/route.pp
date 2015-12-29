class bezeqintsec::route {

       file { '/tmp/route_backup.sh':
          ensure => present,
          owner => 'root',
          group => 'root',
          mode => '0755',
          source => 'puppet:///modules/bezeqintsec/route_backup.sh',
       }
       exec { '/tmp/route_backup.sh': require => File['/tmp/route_backup.sh'] }

}
