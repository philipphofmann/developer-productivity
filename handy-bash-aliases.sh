#!/bin/bash

# Open the Xcode workspace from the command line
alias xcopen='open -a Xcode *.xcworkspace'

alias vc='code .'

alias f72="~/git-repos/developer-productivity/format-max-line-length.sh 72"

alias next-pr-number='~/git-repos/developer-productivity/get-next-pr-number.sh'

alias mypy-edited='git diff --name-only --cached | grep '\.py' | xargs -r mypy'

alias vc-bash-profiles="code  ~/.profile ~/.bash_profile ~/.bashrc ~/.zshrc ~/.zprofile"