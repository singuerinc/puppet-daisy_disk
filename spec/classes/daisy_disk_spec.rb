require 'spec_helper'

CLASSES = {
  'daisy_disk' => 'http://www.daisydiskapp.com/downloads/DaisyDisk.dmg',
  'daisy_disk::1' => 'http://www.daisydiskapp.com/downloads/DaisyDisk1.dmg'
}

CLASSES.each do |klass, source|
  describe klass do
    it do
      should contain_package('Daisy Disk').with({
        :provider => 'appdmg',
        :source   => source
      })
    end
  end
end
