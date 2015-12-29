class hpbsm {
	file { "/usr/local/src/Linux_Agent.tar":
		owner   => "root",
		group   => "root",
		mode    => 0775,
		ensure  => present,
		source  => "puppet:///modules/hpbsm/Linux_Agent.tar",
		notify  => Exec["unpack_hpom"]
	}

	exec { "unpack_hpom":
		command     => "/bin/tar xf /usr/local/src/Linux_Agent.tar && chown -R root:root /usr/local/src/Linux_Agent",
		cwd         => "/usr/local/src",
		refreshonly => true,
		notify      => Exec["install_hpom"]
	}

	exec { "install_hpom":
		cwd         => "/usr/local/src/Linux_Agent",
		command     => "/usr/local/src/Linux_Agent/InstallAgentNew.sh -all",
		logoutput   => true,
		refreshonly => true,
	}
}
