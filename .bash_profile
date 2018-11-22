
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
eval "$(rbenv init -)"
export NVM_DIR=~/.nvm; source $(brew --prefix nvm)/nvm.sh
nvm use stable

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/rtjhie/google-cloud-sdk/path.bash.inc' ]; then source '/Users/rtjhie/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/rtjhie/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/rtjhie/google-cloud-sdk/completion.bash.inc'; fi

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

alias sr='spring rspec'
alias be='bundle exec'
alias fman='foreman start -f Procfile.mine'
alias berc='bundle exec rails c'
alias precommit_react='yarn test; yarn lint; yarn stylelint; yarn flow'
alias robocop='bundle exec rubocop'
alias fuck='pkill -9 ruby; pkill java; pkill python; pkill node; pkill puma; pkill make; pkill varnishd;'
