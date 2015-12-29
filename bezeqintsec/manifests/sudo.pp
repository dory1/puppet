class bezeqintsec::sudo {


        augeas { "sudocmdalias":
           context => "/files/etc/sudoers",
           changes => [
            "set Cmnd_Alias[alias/name = 'HPOMCMDS']/alias/name HPOMCMDS",
            "set Cmnd_Alias[alias/name = 'HPOMCMDS']/alias/command[1] /var/opt/OV/bin/instrumentation/mpathcheck.sh",
            "set Cmnd_Alias[alias/name = 'HPOMCMDS']/alias/command[2] /opt/perf/bin/ovpa",
            "set Cmnd_Alias[alias/name = 'HPOMCMDS']/alias/command[3] /opt/perf/bin/*",
        ],
       }

	augeas { "addasafttosudoers":
         context => "/files/etc/sudoers",
        changes => [
         "set spec[user = \'asaft\']/user asaft",
         "set spec[user = \'asaft\']/host_group/host ALL",
         "set spec[user = \'asaft\']/host_group/command ALL",
         "set spec[user = \'asaft\']/host_group/command/runas_user ALL",
         "set spec[user = \'asaft\']/host_group/command/tag PASSWD",
         'set /files/etc/sudoers/Defaults[*]/requiretty/negate ""',
         'set /files/etc/sudoers/Defaults[*]/requiretty/negate ""',
        ],
}
        augeas { "addaviaptosudoers":
         context => "/files/etc/sudoers",
         changes => [
         "set spec[user = \'aviap\']/user aviap",
         "set spec[user = \'aviap\']/host_group/host ALL",
         "set spec[user = \'aviap\']/host_group/command ALL",
         "set spec[user = \'aviap\']/host_group/command/runas_user ALL",
         "set spec[user = \'aviap\']/host_group/command/tag NOPASSWD",
         'set /files/etc/sudoers/Defaults[*]/requiretty/negate ""',
        ],
        }
  augeas { "adddanitrtosudoers":
         context => "/files/etc/sudoers",
         changes => [
         "set spec[user = \'danitr\']/user danitr",
         "set spec[user = \'danitr\']/host_group/host ALL",
         "set spec[user = \'danitr\']/host_group/command ALL",
         "set spec[user = \'danitr\']/host_group/command/runas_user ALL",
         "set spec[user = \'danitr\']/host_group/command/tag PASSWD",
         'set /files/etc/sudoers/Defaults[*]/requiretty/negate ""',
        ],
        }

#MCMDS
#augeas { "addeliranshtosudoers":
#         context => "/files/etc/sudoers",
#        changes => [
#         "set spec[user = \'eliransh\']/user eliransh",
#         "set spec[user = \'eliransh\']/host_group/host ALL",
#         "set spec[user = \'eliransh\']/host_group/command ALL",
#         "set spec[user = \'eliransh\']/host_group/command/runas_user ALL",
#         "set spec[user = \'aviap\']/host_group/command/tag PASSWD",
#         'set /files/etc/sudoers/Defaults[*]/requiretty/negate ""',
#        ],
#        }

augeas { "addnirztosudoers":
         context => "/files/etc/sudoers",
        changes => [
         "set spec[user = \'nirz\']/user nirz",
         "set spec[user = \'nirz\']/host_group/host ALL",
         "set spec[user = \'nirz\']/host_group/command ALL",
         "set spec[user = \'nirz\']/host_group/command/runas_user ALL",
         "set spec[user = \'nirz\']/host_group/command/tag NOPASSWD",
         'set /files/etc/sudoers/Defaults[*]/requiretty/negate ""',
        ],
}

augeas { "addidansaitosudoers":
         context => "/files/etc/sudoers",
        changes => [
         "set spec[user = \'idansai\']/user idansai",
         "set spec[user = \'idansai\']/host_group/host ALL",
         "set spec[user = \'idansai\']/host_group/command ALL",
         "set spec[user = \'idansai\']/host_group/command/runas_user ALL",
         "set spec[user = \'idansai\']/host_group/command/tag NOPASSWD",
         'set /files/etc/sudoers/Defaults[*]/requiretty/negate ""',
        ],
}

augeas { "adddorytosudoers":
         context => "/files/etc/sudoers",
        changes => [
         "set spec[user = \'dory\']/user dory",
         "set spec[user = \'dory\']/host_group/host ALL",
         "set spec[user = \'dory\']/host_group/command ALL",
         "set spec[user = \'dory\']/host_group/command/runas_user ALL",
         "set spec[user = \'dory\']/host_group/command/tag NOPASSWD",
         'set /files/etc/sudoers/Defaults[*]/requiretty/negate ""',
        ],
}

augeas { "addshobabtosudoers":
         context => "/files/etc/sudoers",
        changes => [
         "set spec[user = \'shobab\']/user shobab",
         "set spec[user = \'shobab\']/host_group/host ALL",
         "set spec[user = \'shobab\']/host_group/command HPOMCMDS",
         "set spec[user = \'shobab\']/host_group/command/runas_user ALL",
         "set spec[user = \'shobab\']/host_group/command/tag NOPASSWD",
         'set /files/etc/sudoers/Defaults[*]/requiretty/negate ""',
        ],
        }

augeas { "delmichaellefromsudoers":
         context => "/files/etc/sudoers",
        changes => [
        "rm /files/etc/sudoers/*[user='michaelle']",
        ],
}

augeas { "deleliranshfromsudoers":
         context => "/files/etc/sudoers",
        changes => [
        "rm /files/etc/sudoers/*[user='eliransh']",
        ],
}

augeas { "delromanpfromsudoers":
         context => "/files/etc/sudoers",
        changes => [
        "rm /files/etc/sudoers/*[user='romanp']",
        ],
}

augeas { "delkobyfromsudoers":
         context => "/files/etc/sudoers",
        changes => [
        "rm /files/etc/sudoers/*[user='koby']",
        ],
}

augeas { "delilialfromsudoers":
         context => "/files/etc/sudoers",
        changes => [
        "rm /files/etc/sudoers/*[user='ilial']",
        ],
}


augeas { "addleonidletosudoers":
         context => "/files/etc/sudoers",
        changes => [
         "set spec[user = \'leonidle\']/user leonidle",
         "set spec[user = \'leonidle\']/host_group/host ALL",
         "set spec[user = \'leonidle\']/host_group/command ALL",
         "set spec[user = \'leonidle\']/host_group/command/runas_user ALL",
         "set spec[user = \'leonidle\']/host_group/command/tag NOPASSWD",
         'set /files/etc/sudoers/Defaults[*]/requiretty/negate ""',
        ],
}

augeas { "addroottosudoers":
         context => "/files/etc/sudoers",
        changes => [
         "set spec[user = \'root\']/user root",
         "set spec[user = \'root\']/host_group/host ALL",
         "set spec[user = \'root\']/host_group/command ALL",
         "set spec[user = \'root\']/host_group/command/runas_user ALL",
         "set spec[user = \'root\']/host_group/command/tag PASSWD",
         'set /files/etc/sudoers/Defaults[*]/requiretty/negate ""',
        ],
}

augeas { "delyanivkafromsudoers":
         context => "/files/etc/sudoers",
        changes => [
        "rm /files/etc/sudoers/*[user='yanivka']",
        ],
}

augeas { "delarieldfromsudoers":
         context => "/files/etc/sudoers",
        changes => [
        "rm /files/etc/sudoers/*[user='arield']",
        ],
}

}

