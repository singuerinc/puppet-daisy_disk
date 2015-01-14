# == Class: daisy_disk
#
# Installs the latest version of the Disay Disk Mac application
#
# === Authors
#
# Robby Colvin <geetarista@gmail.com>
#
class daisy_disk {
  package { 'DaisyDisk':
    provider => 'compressed_app',
    source   => 'http://www.daisydiskapp.com/downloads/DaisyDisk.zip',
  }
}
