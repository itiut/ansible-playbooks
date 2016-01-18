require 'spec_helper'

vars = load_variables

vars['dotfiles_dirs'].each do |h|
  h['dotfiles'].each do |dotfile|
    file = dotfile.is_a?(Hash) ? dotfile['link'] : dotfile

    describe file(File.expand_path(file, '~')) do
      it { should be_symlink }
    end
  end
end
