# node 'ptcntttst001.ky3p.local'
{
$directory_oracle_bin = [ '/ntt', '/ntt/bin', ]
file { $directory_oracle_bin:
    ensure => 'directory',
    owner  => 'root',
    mode   => '0755',
}

file { "/opt/Rv":
    ensure => 'link',
    target => "/ntt/bin",
    force  => yes,
    notify => Exec['Httpd service'],
}

package { 'httpd' : # Package Name
              ensure => installed, # Install the package
                       } -> # Order of the execution, service will be started af                                                                                        ter the installation
              service {'httpd': # Name of the service
              ensure => running, # Start the apache service
              enable => true, # Start on system boot
                       }

exec{'Httpd service':
notify => Exec['httpd install'],
command => 'service httpd restart',
path => '/bin',
user => 'root',
notify => 'restart completed',
}



cron { 'MyApachePID':
  minute      => '*',
  hour        => '2',
#  date        => '*',
  month       => '*',
  weekday     => '1',
  user        => 'root',
  command     => '/home/sama_lohit/test.sh &>>/home/sama_lohit/PID_Apache.txt',
  ensure      => 'present',
}


}

#node default{

# $host = $::hostname

#  if  $host == 'agent1'
 #  {
  #   file{'/opt/agent1.txt':
#       ensure => 'present',
#       content => $host,
#       }
 #  }

  # elsif $host == 'agent2'
   #  {
    # file{'/opt/agent2.txt':
     #   ensure => 'present',
      #  content => $host,
       # }
#}

 # else{
# warning('Welcome')
# }
#}

