if which ruby >/dev/null && which gem >/dev/null; then
    PATH="$PATH:$(ruby -rubygems -e 'puts Gem.user_dir')/bin"
fi
