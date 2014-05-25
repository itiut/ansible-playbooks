export PATH=$HOME/.linuxbrew/bin:$PATH
export LD_LIBRARY_PATH=$HOME/.linuxbrew/lib:$LD_LIBRARY_PATH

# rbenv
export RBENV_ROOT=$HOME/.linuxbrew/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
