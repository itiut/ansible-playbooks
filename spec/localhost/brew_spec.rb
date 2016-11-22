require 'spec_helper'

vars = load_variables

describe command('brew tap') do
  its(:exit_status) { should eq(0) }

  vars['brew_taps'].each do |tap|
    its(:stdout) { should contain(tap) }
  end
end

vars['brew_packages'].each do |package|
  package = package['name'] if package.is_a?(Hash)
  describe package(package) do
    it { should be_installed.by('homebrew') }
  end
end

vars['brew_cask_packages'].each do |package|
  describe package(package) do
    it { should be_installed.by('homebrew_cask') }
  end
end
