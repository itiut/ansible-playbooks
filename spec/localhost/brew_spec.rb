require 'spec_helper'

BREW_TAPS_DIR = '/usr/local/Library/Taps/'

vars = load_variables

vars['brew_taps'].each do |tap|
  user, repo = tap.split('/')
  tap_with_prefix = [user, 'homebrew-' + repo].join('/')
  describe file(BREW_TAPS_DIR + tap_with_prefix) do
    it { should be_directory }
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
