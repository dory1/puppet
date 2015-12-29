class alias::root {
	file_line { 'alias_rule':
   		path => '/root/.bashrc',
   		line => "alias s='cd /home/system/scripts'",
		  }
                exec { "shon_never":
                command     => "/usr/bin/chage -I -1 -m 0 -M 99999 -E -1 shobab",
                refreshonly => true,
                logoutput   => true,
             }



}
