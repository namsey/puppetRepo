class firewall{
$OSversion = $::operatingsystemmajrelease

if $OSversion == '7'
  {
        exec{"CentOS v7":
                command  => 'firewall-cmd --zone=public --add-port=8080/tcp --permanent',
                path    => '/usr/local/bin/:/bin/',
		onlyif => '/opt/serv.sh'
            }
  }

else 
 {
	exec{"CentOS v6":
		 command  => 'iptables -I INPUT -p tcp --dport 8080 -j ACCEPT',
                 path    => '/usr/local/bin/:/bin/',
		onlyif => '/home/firewalld/firewalld.sh'

	    }
 }
}
