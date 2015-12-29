	class vmitool::vmtoolsI {
		file {  # config
                "/tmp/VMwareTools-9.4.10-2092844.tar.gz":
                        source  => "puppet:///modules/vmitool/VMwareTools-9.4.10-2092844.tar.gz",
                        owner => "root",
                        group => "root",
                        mode => 0644,
                        ensure => "file",
                        force => true,
	                notify => Exec["vmdep"],
        }

	        exec { "vmdep":
                cwd         => "/tmp",
                command     => "/bin/tar -xvf /tmp/VMwareTools-9.4.10-2092844.tar.gz && cd /tmp/vmware-tools-distrib/ && ./vmware-install.pl --default EULA_AGREED=yes ",
                refreshonly => true,
		onlyif =>  "/usr/sbin/dmidecode | grep VMware"
             }

                 
                 
                 
}                
                 
