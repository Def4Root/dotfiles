# .zshrc

# zplug
source ~/.zplug/init.zsh
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "chrissicool/zsh-256color"
# zplug reobin/typewritten, as:theme

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load

# typewritten
fpath+=$HOME/.zsh/typewritten
autoload -U promptinit; promptinit
prompt typewritten
TYPEWRITTEN_PROMPT_LAYOUT="pure"
TYPEWRITTEN_CURSOR="beam"

# rust
source "$HOME/.cargo/env"

# aliases
alias vi=nvim
#alias cat=bat
#alias ls=exa

alias rf='rm -rf'
alias ll='ls -la'
alias la='ls -a'
alias sl=ls

alias rc='nvim ~/.zshrc'
alias rz='exec zsh'

clear && cd /mnt/c/Users/souto/Desktop
