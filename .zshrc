# Set up the prompt
autoload -Uz promptinit
promptinit
function git_branch() {
    branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
    if [[ $branch == "" ]]; then
        :
    else
        echo ' (' $branch ') '
    fi
}
~/.scripts/fetches-colors/fetch
setopt prompt_subst
PROMPT='%F{cyan}%Bλ %~ $(git_branch)%b%F{green} '
# PROMPT="%(?:%{$fg_bold[green]%}λ %~ :%{$fg_bold[red]%}➜ )"
export SUDO_PROMPT="∆ pass for $(tput bold)alab?$(tput sgr0) "
setopt histignorealldups sharehistory
# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
alias ls="exa -l -a --grid --icons"
# Use modern completion system
autoload -Uz compinit
compinit
GITHUB_ACCESS_TOKEN="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"
