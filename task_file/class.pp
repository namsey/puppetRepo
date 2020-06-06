class test{
  file{'/opt/test':
	ensure => 'present',
	owner => 'root',
	group => 'root',
	mode => '0777',
	content => 'This file is newly created using class method. Adding few more lines.'
	}


#String $var1 = 'running',
#String $var2 = 'true',

  service{'ntpd':
	ensure => 'running',
	enable => 'true',
	}

}

include test



#cron{'NtpdPID':
#       minute  => '*/1',
#       hour    => '*',
#       month   => '*',
#       weekday => '*',
#       user    => 'root',
#       command => '/opt/ex/test.sh &>> /opt/ex/PID.text',
#       ensure  => 'present',
#}


# file{'/opt/example.txt':
#        ensure => 'present',
#        owner => 'root',
#        mode => '0777',
#        content => 'This file is newly created using.'
#        }


#package{'httpd':
#       ensure => 'installed',
#       }
#
#service{'httpd':
#       ensure => 'running',
#       enable => 'true',
#       }


#package { 'compass':
#    ensure   => 'latest',
#    provider => 'gem',
#  }


#user { 'naman':
#   ensure => present,
#   uid    => '552',
#   home   => '/home/naman',
#}

#user { 'NTT':
#    ensure     => 'present',
#    comment    => 'Hi NTT',
#    managehome =>  true,
#    home       => '/home/NTT',
#    shell      => '/bin/bash',
#  }

   node "agent1.puppet.com" {
        include mymodule
}

[root@master manifests]# vi site.pp

# file{'/opt/example.txt':
#        ensure => 'present',
#        owner => 'root',
#        mode => '0777',
#        content => 'This file is newly created using.'
#        }


#package{'httpd':
#       ensure => 'installed',
#       }
#
#service{'httpd':
#       ensure => 'running',
#       enable => 'true',
#       }


#package { 'compass':
#    ensure   => 'latest',
#    provider => 'gem',
#  }


#user { 'naman':
#   ensure => present,
#   uid    => '552',
#   home   => '/home/naman',
#}

#user { 'NTT':
#    ensure     => 'present',
#    comment    => 'Hi NTT',
#    managehome =>  true,
#    home       => '/home/NTT',
#    shell      => '/bin/bash',
#  }
