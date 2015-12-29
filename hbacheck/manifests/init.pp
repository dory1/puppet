	class hbacheck::hbacheck {
                file {  # config
                "/tmp/hbac":
                        source  => "puppet:///modules/hbacheck/hbac",
                        owner => "root",
                        group => "root",
                        mode => 0777,
                        ensure => "file",
                        force => true,
                        notify => Exec["checkHba"],
        }

	        exec { "checkHba":
                cwd         => "/tmp",
                command     => "/tmp/hbac",
                logoutput   => true,
             }


}                
                 
