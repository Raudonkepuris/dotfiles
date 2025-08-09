pfetch

export PATH=$PATH:$HOME/.local/bin:$HOME/.dotnet/tools
export BROWSER=firefox

autoload -U colors && colors
PROMPT="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

alias v=nvim
alias t=tmux

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

source ~/.local/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
