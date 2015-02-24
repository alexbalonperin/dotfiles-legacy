# ~/.bash_profile: executed by bash when invoked as an interactive login shell, or as a non-interactive shell with the --login option.

# Most of the config is in .bashrc
[[ -r ~/.bashrc ]] && . ~/.bashrc

# Aliases
[[ -r ~/.bash_aliases ]] && . ~/.bash_aliases


# Completion
# ##########

[[ -r $(brew --prefix)/etc/bash_completion ]] && . $(brew --prefix)/etc/bash_completion

[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion


# RVM (https://rvm.io)
# ####################
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

source ~/.git-prompt.sh

# Prompt
# ######

TITLEBAR='\[\033]0;\w\007\]'
PROMPT='\[\033[0;31m\]\u@\h\[\033[0m\]:\[\033[0;32m\]\w\[\033[0m\]$(__git_ps1 "(%s)")\$ '
PS1="${TITLEBAR}${PROMPT}"

