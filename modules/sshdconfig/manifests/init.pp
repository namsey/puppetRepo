class sshdconfig ( $serviceName = hiera("sshservicename") ){
 
    file { "/etc/ssh/sshd_config":
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
        source => "puppet:///modules/sshdconfig/sshd_config",
        notify  => Service[$serviceName],
    }
 
    service { $serviceName:
        ensure => 'running',
        enable => 'true',
    }
}
