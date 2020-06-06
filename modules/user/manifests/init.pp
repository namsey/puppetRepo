class user{
  group{'nttdata':
    gid => 3001,
    }
  group{'NTT':
    ensure => absent,
 }
}
