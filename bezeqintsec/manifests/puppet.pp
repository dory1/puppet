class bezeqintsec::puppet {

      service {'puppet':
        name      => puppet,
        hasstatus => true,
        enable    => true,
        ensure    => running,
      }

}
