node "agent1.puppet.com"{
	include host
	include ntpd
	include template_example
}



#node "agent2.puppet.com"{

#file { '/home/pid.txt':
#      ensure => 'present',
#      mode => '666',
#      owner => 'root',
#      group => 'root',
#      notify => Exec['/home/test.sh'],
#  }
#  exec { '/home/test.sh':
#      #path => ["/usr/bin", "/usr/sbin", "/bin/bash"],
#      command => '/home/test.sh',
#  }
#}


#node "agent1.puppet.com"{include sshdconfig}
 
#$osVersion = $::operatingsystemmajrelease

#if $osVersion == "7"{

#node "agent2.puppet.com"{
#cron { 'MyApachePID':
#  minute      => '1',
#  user        => 'root',
#  command     => '/home/test.sh &>>/home/pid.txt',
#  ensure      => 'present',
#}
#}

# exec{"start apache":
# cwd => '/etc',
# command => 'systemctl start httpd.service',
# path => '/usr/bin', 
#  }


#exec { 'Run a command':
#    command => '/bin/echo '/bin/date' >/tmp/output.txt',
#command => '/bin/echo `/bin/date` >/tmp/output.txt', 
# }

#package { 'sinatra':
#    ensure   => 'installed',
#    provider => 'gem',
#  }


