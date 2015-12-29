class bezeqintsec::password {

  package { cracklib:
    ensure => installed,
  }

 file_line { 'password policy: replace password strength':
    ensure => present,
    path    => '/etc/pam.d/system-auth',
    match => '^password.*requisite.*retry.*',
    line  => 'password    requisite    pam_passwdqc.so min=disabled,disabled,12,8,7 retry=3'
 }


  file_line { 'password policy: changing pass max days to 90':
    ensure => present,
    path    => '/etc/login.defs',
    match => '^PASS_MAX_DAYS',
    line     => 'PASS_MAX_DAYS 90'
}

  file_line { 'password policy: limiting reused password for last 15':
    ensure => present,
    path    => '/etc/pam.d/system-auth',
    match   => '^password.*sufficient.*shadow*',
    line     => 'password    sufficient     pam_unix.so use_authtok md5 shadow remember=15'
}

}
