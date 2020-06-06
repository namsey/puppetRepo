class rpm{

package{'tomcat deploy':
  ensure => 'present',
  provider => 'rpm',
  source => '/home/hello-1-0.noarch.rpm',
}
}
