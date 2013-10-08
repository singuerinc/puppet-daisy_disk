require 'spec_helper'

CLASSES = {
  'daisy_disk' => {
    :provider => 'compressed_app',
    :source => 'http://www.daisydiskapp.com/downloads/DaisyDisk.zip'
  },
  'daisy_disk::1' => {
    :provider => 'appdmg',
    :source => 'http://www.daisydiskapp.com/downloads/DaisyDisk1.dmg'
  }
}

CLASSES.each do |klass, version|
  describe klass do
    it do
      should contain_package('Daisy Disk').with({
        :provider => version[:provider],
        :source   => version[:source]
      })
    end
  end
end
