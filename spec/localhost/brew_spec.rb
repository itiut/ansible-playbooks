require 'spec_helper'

vars = load_variables

vars['brew_taps'].each do |tap|
  describe command("brew tap | grep #{tap}") do
    its(:exit_status) { should eq(0) }
    its(:stdout) { should eq("#{tap}\n") }
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
