class dp_remove::foreman {

exec { "restart xinetd":
    command => "/etc/init.d/xinetd restart",
    onlyif => "/bin/rm /etc/xinetd.d/omni",
}

}
