class bezeqintsec::users {
        user {'asaft':
                comment => 'SystemUnix',
                ensure  => present,
                home    => '/home/asaft',
                shell   => '/bin/bash',
                managehome => true,
                password => '',
                }
        user {'aviap':
                comment => 'SystemUnix',
                ensure  => present,
                home    => '/home/aviap',
                shell   => '/bin/bash',
                managehome => true,
                password => '',
                }
        user {'eliransh':
                comment => 'SystemUnix',
                ensure  => absent,
                home    => '/home/eliransh',
                shell   => '/bin/bash',
                managehome => true,
                password => '',
		}
        user {'michaelle':
                comment => 'SystemUnix',
                ensure  => absent,
                home    => '/home/michaelle',
                shell   => '/bin/bash',
                managehome => true,
                password => '',
                }
       user {'danitr':
                comment => 'SystemUnix',
                ensure  => present,
                home    => '/home/danitr',
                shell   => '/bin/bash',
                managehome => true,
                password => '',
                }

       user {'dory':
                comment => 'SystemUnix',
                ensure  => present,
                home    => '/home/dory',
                shell   => '/bin/bash',
                managehome => true,
                password => '',
                }

	 user {'nirz':
                comment => 'SystemUnix',
                ensure  => present,
                home    => '/home/nirz',
                shell   => '/bin/bash',
                managehome => true,
                password => '',
                }
         user {'idansai':
                comment => 'SystemUnix',
                ensure  => present,
                home    => '/home/idansai',
                shell   => '/bin/bash',
                managehome => true,
                password => '',
                }
        user {'leonidle':
                comment => 'SystemUnix',
                ensure  => present,
                home    => '/home/leonidle',
                shell   => '/bin/bash',
                managehome => true,
                password => '',
		}
        user {'yanivka':
                comment => 'SystemUnix',
                ensure  => absent,
                home    => '/home/yanivka',
                shell   => '/bin/bash',
                managehome => true,
                password => '',
                }
        user {'shobab':
                comment => 'Shob HPOM user',
                ensure            => present,
                home    => '/home/shobab',
                shell   => '/bin/bash',
                managehome => true,
                password => '',
                }
        user {'unixbak':
                comment => 'SystemUnix',
                ensure  => present,
                home    => '/home/unixbak',
                shell   => '/bin/bash',
                managehome => true,
                password => '',
                }
        user {'arield':
                comment => 'SystemUnix',
                ensure  => absent,
                home    => '/home/arield',
                shell   => '/bin/bash',
                managehome => true,
                password => '',
                }
        user {'root':
                comment => 'root',
                ensure  => present,
                home    => '/root',
                shell   => '/bin/bash',
                managehome => true,
                password => '',
                }
        user {'koby':
                ensure  => absent,
                home    => '/home/koby',
                shell   => '/bin/bash',
                managehome => true,
                }
        user {'romanp':
                ensure  => absent,
                home    => '/home/romanp',
                shell   => '/bin/bash',
                managehome => true,
                }
        user {'ilial':
                ensure  => absent,
                home    => '/home/ilial',
                shell   => '/bin/bash',
                managehome => true,
                }
        user {'gabim':
                comment => 'SystemUnix',
                ensure  => absent,
                home    => '/home/michaelle',
                shell   => '/bin/bash',
                managehome => true,
                password => '',
                }

}
