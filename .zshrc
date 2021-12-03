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
PROMPT='%F{cyan}%Bλ %~ $(git_branch)%b%F{blue} '
PATH=$PATH:/usr/local/go/bin:/home/alab/.local/bin
export EDITOR='vim'
export TERMINAL='st'
# If this is an xterm set the title to user@host:dir
# PROMPT="%(?:%{$fg_bold[green]%}λ %~ :%{$fg_bold[red]%}➜ )"
setopt histignorealldups sharehistory
# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
alias ls="exa -l -a --grid --icons"
alias tty-clock='tty-clock -s -c -b -t'
alias grep='grep --color=auto'
autoload -Uz compinit
compinit
alias luamake=/home/alab/lua-language-server/3rd/luamake/luamake
. "$HOME/.cargo/env" 
# xrandr --output eDP-1 --brightness 0.7
