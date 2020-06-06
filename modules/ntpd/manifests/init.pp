class ntpd{

package{
ensure => 'installed',
notify => Service['ntpd'],
}

	service{'ntpd':
	ensure => 'running',
	enable => 'true',
	}
}
