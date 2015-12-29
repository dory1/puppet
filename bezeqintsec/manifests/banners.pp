class bezeqintsec::banners {

file {'motd':
	ensure  => file,
	path    => '/etc/motd',
	mode    => 0644,
	content => "ALERT! You are entering into a secured area! Your IP, Login Time, Username has been noted and has been sent to the server administrator!
This service is restricted to authorized users only. All activities on this system are logged.
Unauthorized access will be fully investigated and reported to the appropriate law enforcement agencies.
",
    }

file { #Replace RedHat relase file
         "/etc/issue":
                mode => 0644,
                ensure => "file",
	content => "
#############################################################
#                      Welcome				    #
#     All connections are monitored and recorded            #  
# Disconnect IMMEDIATELY if you are not an authorized user! # 
#############################################################
",
 }

 file_line { 'closing root access in ssh':
    ensure => present,
    path    => '/etc/ssh/sshd_config',
    match => '^PermitRootLogin.*',
    line  => 'PermitRootLogin no',
    notify => Exec["sshd"]
 }


 file_line { 'setting ssh banner':
    ensure => present,
    path    => '/etc/ssh/sshd_config',
    match => '^Banner.*',
    line  => 'Banner /etc/issue',
    notify => Exec["sshd"]
 }

                exec { "sshd":
                command     => "/etc/init.d/sshd restart",
                cwd         => "/etc",
                refreshonly => true,
                logoutput   => true,
             }


}
