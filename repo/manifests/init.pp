class repo::rhel { 

   notify {'FYI': message => "Setting up Repo for a $operatingsystem system", }

   case $lsbmajdistrelease { 
      '5': { 
          yumrepo {
         "bezeqint-el5":
            descr          => "RedHat Enterprise Linux 5 - \$basearch Base",
        baseurl            => "http://unix-repo.bezeqint.net:6163/redhat/5.9/os/x86_64/",
            failovermethod => "priority",
            gpgcheck       => "0",
            enabled        => "1";
          } ### End yumrepo::

        }  ### End 5
          '6': { 
          yumrepo {
         "bezeqint-el6":
            descr          => "RedHat Enterprise Linux 6 - \$basearch",
        baseurl            => "http://unix-repo.bezeqint.net:6163/redhat/6.6/os/x86_64/",
            failovermethod => "priority",
            gpgcheck       => "0",
            enabled        => "1";
          } ### End yumrepo::

        }  ### End 6
   } ### End case lsb*
} ### End repo::rhel
