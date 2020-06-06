class symlink{
  
  file{'/usr/link':
    	ensure => 'link',
	target => '/opt',
	notify => Service["httpd"],
      }
  service{'httpd':
	enable => true,
	hasrestart => true,

      }

}
