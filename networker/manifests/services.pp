class networker::service {
    service { 'networker':
      ensure    => running,
      require => Package['lgtoclnt'],
      enable    => true,
    }
}
