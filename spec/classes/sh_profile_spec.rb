require 'spec_helper'

describe 'sh_profile', :type => 'class' do
    
  context "Should create file /etc/profile.d" do
    
    it do
      should contain_file('/etc/profile.d').with(
            'source'  => 'puppet:///modules/sh_profile/',
            'ensure'  => 'directory',
            'recurse' => true,
            'purge'   => false,
            'force'   => true,
            'owner'   => 'root',
            'group'   => 'root',
            'mode'    => '0755',
    )
    end
  end
end
