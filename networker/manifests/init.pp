class networker {

if $is_virtual == 'false' {

case $::operatingsystemrelease { 
 /^5.*/: { 
    package { 'lgtoclnt':
     ensure => latest,
    }
	 }
				}
    service { 'networker':
      ensure    => running,
      require => Package['lgtoclnt'],
      enable    => true,
    }

				}
}

