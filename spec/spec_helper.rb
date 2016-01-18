require 'serverspec'
require 'yaml'

set :backend, :exec

def load_variables
  YAML.load_file(File.expand_path('../../vars/main.yml', __FILE__))
end

def brew_taps_dir
  '/usr/local/Library/Taps/'
end

def cask_packages_dir
  '/opt/homebrew-cask/Caskroom/'
end

def expand_home(path)
  path.gsub(/{{ home }}/, File.expand_path('~'))
end
