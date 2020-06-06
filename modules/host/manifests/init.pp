class host{

$host = $::hostname

if $host == 'agent1'
{
file {'/opt/host.txt':
ensure => 'present',
content => $host,
} 
}

else {
warning ( 'Welcome ')
}
}
