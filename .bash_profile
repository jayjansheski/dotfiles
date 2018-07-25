if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

if [ -f ~/.config/exercism/exercism_completion.bash ]; then
  . ~/.config/exercism/exercism_completion.bash
fi

# load rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - --no-rehash)"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# source ~/.profile

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jay/google-cloud-sdk/path.bash.inc' ]; then source '/Users/jay/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jay/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/jay/google-cloud-sdk/completion.bash.inc'; fi

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# yarn
export PATH="/usr/local/bin/yarn:$HOME/.asdf/installs/nodejs/10.6.0/.npm/bin:$PATH"

# Aliases
alias py3='source ~/venvs/py3/bin/activate'
