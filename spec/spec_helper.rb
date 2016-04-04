require 'serverspec'
require 'yaml'

set :backend, :exec

def load_variables
  YAML.load_file(File.expand_path('../../group_vars/localhost.yml', __FILE__))
end

def expand_home(path)
  path.gsub(/{{ home }}/, File.expand_path('~'))
end
