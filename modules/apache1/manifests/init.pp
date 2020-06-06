class apache{

file{'/opt/pid.txt':
 ensure => 'present',
 mode => '777',
notify => Cron['ServicePID'],
}

 cron{'ServicePID':
  minute => '*',
  hour => '14',
  month => '*',
  weekday => '1',
  user => 'root',
  command => '/opt/pid.sh',
  ensure => 'present',
   }
}

