# == Class: beaver::params
#
# This class is responsible for setting defaults
#
#
# === Authors
#
# * Justin Lambert <mailto:jlambert@letsevenup.com>
#
class beaver::params {
  $enable                 = true
  $user                   = 'beaver'
  $group                  = 'beaver'
  $home                   = '/home/beaver'
  $venv                   = "${home}/venv"
  $package_name           = 'beaver'
  $package_provider       = 'pip'
  $python_version         = '2.7'
  $version                = 'present'
  $redis_host             = 'localhost'
  $redis_db               = 0
  $redis_port             = 6379
  $redis_namespace        = 'logstash:beaver'
  $queue_timeout          = 60
  $enable_sincedb         = true
  $sincedb_path           = '/tmp/beaver_since.db'
  $multiline_regex_after  = undef
  $multiline_regex_before = undef
  $stanzas                = {}

  case $::operatingsystem {
    'RedHat', 'CentOS', 'Fedora', 'Scientific', 'Amazon', 'OracleLinux', 'SLC': {
      if versioncmp($::operatingsystemmajrelease, '7') >= 0 {
        $service_provider     = 'systemd'
      } else {
        $service_provider     = 'init'
      }
    }

    'Debian': {
      if versioncmp($::operatingsystemmajrelease, '8') >= 0 {
        $service_provider = 'systemd'
      } else {
        $service_provider = 'init'
      }
    }

    'Ubuntu': {
      if versioncmp($::operatingsystemmajrelease, '15') >= 0 {
        $service_provider = 'systemd'
      } else {
        $service_provider = 'init'
      }
    }

    default: {
      $service_provider     = 'systemd'
    }
  }
}
