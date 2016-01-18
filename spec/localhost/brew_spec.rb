require 'spec_helper'

vars = load_variables

vars['brew_taps'].each do |tap|
  user, repo = tap.split('/')
  tap_with_prefix = [user, 'homebrew-' + repo].join('/')
  describe file(brew_taps_dir + tap_with_prefix) do
    it { should be_directory }
  end
end

vars['brew_packages'].each do |package|
  describe package(package) do
    it { should be_installed }
  end
end

vars['cask_packages'].each do |package|
  describe file(cask_packages_dir + package) do
    it { should be_directory }
  end
end
