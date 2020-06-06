class pidvalue{
  file { 'bash_script':
      ensure => 'file',
#      content => '#!/bin/bash
#ps -ef | grep httpd | (head -n 1 ) | awk '{ print $3}'',

      path  => '/etc/puppet/modules/pid/script/test.sh',
      owner => 'root',
      group => 'root',
      mode  => '0777',
      notify => Exec['run_script'],
  }
  exec { 'run_script':
      #path => ["/usr/bin", "/usr/sbin", "/bin/bash"],
      command => '/etc/puppet/modules/pid/script/test.sh',
      refreshonly => true
  }
}
