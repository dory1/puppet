	class bdns::named {
		file {  # config
                "/var/named/chroot/etc/named.conf":
                        source  => "puppet:///modules/bdns/named.conf",
                        owner => "root",
                        group => "named",
                        mode => 0644,
                        ensure => "file",
                        force => true,
	                notify => Exec["reconfig"]
        }

	        exec { "reconfig":
                command     => "/usr/sbin/rndc reconfig",
                cwd         => "/etc",
                refreshonly => true,
                logoutput   => true,
             }
exec { "pecl_memcache" :
        provider  => shell,
        command   => "hostname > /tmp/hostname",
        logoutput => true,
}


}
	class bdns::namedrfc {
                file {  # config
                "/var/named/chroot/etc/named.rfc1912.zones":
                        source  => "puppet:///modules/bdns/named.rfc1912.zones",
                        owner => "root",
                        group => "named",
                        mode => 0644,
                        ensure => "file",
                        force => true,
	                notify => Exec["reconfig"]
        }

}
