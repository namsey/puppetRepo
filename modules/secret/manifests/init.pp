class filer {
  # this is the important part
  $secret = Sensitive('Peter Parker')

  notice($secret)

  file { '/tmp/spider-man':
    ensure  => 'present',
    content => $secret,
  }
}
