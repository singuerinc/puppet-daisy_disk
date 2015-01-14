# == Class: daisy_disk::1
#
# Installs the older version of the Daisy Disk Mac application
#
# === Authors
#
# Robby Colvin <geetarista@gmail.com>
#
class daisy_disk::1 inherits daisy_disk {
  Package['DaisyDisk'] {
    provider => 'appdmg',
    source   => 'http://www.daisydiskapp.com/downloads/DaisyDisk1.dmg',
  }
}
