require 'spec_helper'

vars = load_variables

vars['repositories_repos'].each do |repo|
  path = expand_home(vars['repositories_root']) + '/' + repo

  describe file(path) do
    it { should be_directory }
  end
end
