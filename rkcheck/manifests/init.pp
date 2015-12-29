	class rkcheck::rkhunter {
		file {  # config
                "/tmp/rkhunter-1.4.2.tar.gz":
                        source  => "puppet:///modules/rkcheck/rkhunter-1.4.2.tar.gz",
                        owner => "root",
                        group => "root",
                        mode => 0644,
                        ensure => "file",
                        force => true,
	                notify => Exec["tarrk"],
        }

	        exec { "tarrk":
                cwd         => "/tmp",
                command     => "/bin/tar -xvf /tmp/rkhunter-1.4.2.tar.gz && cd /tmp/rkhunter-1.4.2/ && ./installer.sh --layout default --install && /usr/local/bin/rkhunter -c --sk | grep 'Possible rootkits'",
                refreshonly => true,
                logoutput   => true,
             }
                exec { "installr":
                cwd         => "/tmp/rkhunter-1.4.2/",
                command     => "/tmp/rkhunter-1.4.2/installer.sh --layout default --install",
                refreshonly => true,
                logoutput   => true,
                 }

                exec { "runc":
                cwd         => "/tmp/rkhunter-1.4.2/",
                command     => "/usr/local/bin/rkhunter -c --sk",
                refreshonly => true,
                logoutput   => true,
                 }

                 
                 
                 
}                
                 
