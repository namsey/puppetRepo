class mymodule {
file { '/home/naman':
        ensure => directory,
        owner => 'root',
        group => 'root',
    }
file { "/home/naman/test.txt":
        mode => "0644",
        owner => 'root',
        group => 'root',
        source => 'puppet:///modules/mymodule/test.txt',
    }
}
