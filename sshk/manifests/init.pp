class sshk::foreman {

file { '/root/.ssh/authorized_keys':
  ensure => present,
}->
file_line { 'Add foreman key':
  path => '/root/.ssh/authorized_keys',  
  line => 'ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA0JB4OpUoB/SNy6Z5MWslzu6pdoeF2Sx26EIpKjdo5u42i9F5+YawpV76yOWSthcJCsL/xakSUel9PKqnYgIft3T9ett0uMVxEqbQxQoOQnZWgipReZDry0z+r9Q11pqI+bVGquXMjimh18JQ02P18gYNBALENHMykFlPUW9lNGbZwj76aYWAI7KlYyDZHK5msWHGRGq0kgc3NxwrW1a1U9JgMAnfsuERrZWjRI67/mR8uynMusYRAR1zNlrRMvciulIZ7dXsmwBDnjS9Z9FPYWnhzmKmAnonmXSGQWq9BF5lpW9ed8Zn4MIx4a9W28MVxfp4lfWDy3TndQ6Cn2aKvQ== root@ptkpl-foreman
',
}
file_line { 'Add dory key':
  path => '/root/.ssh/authorized_keys',
  line => 'ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAxGwcXzbH/4LU1pcSs2AADF4pWQierTYVLJ1ZP7Mktr+CmGlS1+GL5m8VyEY7EdqQ3ytvLhUq7gR+jZm/Cu7Jwde2ohMjZrB++iwyXa4KAjGGcsaS1bepUaRWDJTA9mWoh3jMqrfuEEOPT3o6S2DF7nej2ueVJClXAIJXOnOs9l7wjaxQEulzMMcGc2vtJmg/igKauzKZmf24UPE3sIZvxtWcFPtANNrQ3dWLkngcw1R3USdn5EUupeyLOp9k8ss336iL+dp2LhEIDYMVyO+vqHW+lehfW/kw+L2pv9xzHgJSEATqLysjG2Bb4e794uYXCx4HxvFnAG+GGwZxbI7V0Q== root@dor-linux
',
}



}
