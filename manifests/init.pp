# == Class: daisy_disk
#
# Installs the latest version of the Disay Disk Mac application
#
# === Authors
#
# Robby Colvin <geetarista@gmail.com>
#
class daisy_disk {
  package { 'Daisy Disk':
    provider => 'appdmg',
    source   => 'http://www.daisydiskapp.com/downloads/DaisyDisk.dmg',
  }
}
