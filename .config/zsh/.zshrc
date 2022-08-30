# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# escape sequence

plugins=(
  kubectl
  kube-ps1
  docker
  docker-compose
  git
  vi-mode
  history-substring-search
  pass
  genpass
  ssh-agent
)

# fzf shortcuts and completion
. /usr/share/fzf/fzf-extras.zsh
. /usr/share/fzf/completion.zsh
. /usr/share/fzf/key-bindings.zsh

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# history-substring-search UP and DOWN arrows
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# workman bindings
source ~/.config/zsh/workman

bindkey 'fw' vi-cmd-mode
# vi mode history-substring-search
bindkey -M vicmd 'e' history-substring-search-up
bindkey -M vicmd 'n' history-substring-search-down

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# alias gpg2="gpg2 --homedir $XDG_DATA_HOME/gnupg"

alias wget="wget --hsts-file=$XDG_CACHE_HOME/wget-hsts"
alias rofi-greenclip="rofi -modi clipboard:\"greenclip print\" -show clipboard -run-command '{cmd}'"

fpath+=${ZDOTDIR:-~}/.zsh_functions

source <(plz --completion_script)

alias lzd='lazydocker'
alias nv=nvim
alias nv=nvimvenv
alias config='/usr/bin/git --git-dir=$XDG_DATA_HOME/dotfiles/ --work-tree=$HOME'

alias quteb_gui='qutebrowser --basedir .local/share/qutebrowser/profiles/guillaume'
alias quteb_lgg='qutebrowser --basedir .local/share/qutebrowser/profiles/lgg'

alias yarn="yarn --use-yarnrc $XDG_CONFIG_HOME/yarn/config"

alias xo="xdg-open"
alias c=". $HOME/.local/bin/smart_cd"

function nvimvenv {
  if [[ -e "$VIRTUAL_ENV" && -f "$VIRTUAL_ENV/bin/activate" ]]; then
    source "$VIRTUAL_ENV/bin/activate"
    command nvim $@
    deactivate
  else
    command nvim $@
  fi
}

