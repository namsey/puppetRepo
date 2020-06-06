class template_example{
$user = "NTT"

file{'/opt/name.txt':
  ensure => 'present',
  content => template('template_example/name.txt.erb'),
  owner => 'root',
  group => 'root',
}

}
