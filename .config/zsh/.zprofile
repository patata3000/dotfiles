export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache

export ZSH=$XDG_CONFIG_HOME/oh-my-zsh
echo $ZSH
export PATH
PATH="$PATH:$HOME/.local/bin"
PATH="$PATH:."

export ZSH_THEME="my-avit"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass

# pyenv
export PYENV_ROOT="$XDG_DATA_HOME/pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# TODO Make this automatic with venv
export PYTHONPATH=$PYTHONPATH:$HOME/Projects/code:.

if [ -f "${XDG_CACHE_HOME}/gnupg/.gpg-agent-info" ]; then
  . "${XDG_CACHE_HOME}/gnupg/.gpg-agent-info"
  export GPG_AGENT_INFO
  export SSH_AUTH_SOCK
  export SSH_AGENT_PID
fi
export GPGKEY="2E8672E681E4951F32B67F6A86D6A8CAE9567967"
export GPG_TTY=$(tty)


export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export XSERVERRC="$XDG_CONFIG_HOME"/X11/xserverrc
# this is not working with lightdm
# export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

if [ -s "${XDG_CONFIG_HOME}/ssh/config" ]
then
    SSH_CONFIG="-F ${XDG_CONFIG_HOME}/ssh/config"
fi
if [ -s "${XDG_CONFIG_HOME}/ssh/id_dsa" ]
then
    SSH_ID="-i ${XDG_CONFIG_HOME}/ssh/id_dsa"
fi
alias ssh="ssh $SSH_CONFIG $SSH_ID "
alias ssh-copy-id="ssh-copy-id $SSH_ID"
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc

export PYTHONHISTFILE=$XDG_DATA_HOME/python/python_history
export IPYTHONDIR="$XDG_CONFIG_HOME"/jupyter
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter

export PSQLRC="$XDG_CONFIG_HOME/pg/psqlrc"
export PSQL_HISTORY="$XDG_CACHE_HOME/pg/psql_history"
export PGPASSFILE="$XDG_CONFIG_HOME/pg/pgpass"
export PGSERVICEFILE="$XDG_CONFIG_HOME/pg/pg_service.conf"

export VISUAL="term_exec $EDITOR"
export FCEDIT="$EDITOR"
export SUDO_EDITOR="$EDITOR"
export SYSTEMD_EDITOR="$EDITOR"


export NOTMUCH_CONFIG="$HOME/.config/notmuch/config"

export HISTFILE="$XDG_DATA_HOME"/zsh/history
zstyle ':completion:*' cache-path $XDG_CACHE_HOME/zsh/zcompcache
export VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true

export LESSKEY="$XDG_CONFIG_HOME"/less/lesskey
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history

export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export NVM_DIR="$XDG_DATA_HOME"/nvm
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history

#export $XDG_CONFIG_HOME/emacs/init.el

export SPACEMACSDIR=$XDG_CONFIG_HOME/spacemacs

export WGETRC="$XDG_CONFIG_HOME/wgetrc"

export PYLINTHOME="$XDG_DATA_HOME/pylint"

export GNUPGHOME="$XDG_CONFIG_HOME"/gnupg

export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java

export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker
export MACHINE_STORAGE_PATH="$XDG_DATA_HOME"/docker-machine

export CARGO_HOME="$XDG_DATA_HOME"/cargo

export GEM_HOME="$XDG_DATA_HOME"/gem

export GEM_SPEC_CACHE="$XDG_CACHE_HOME"/gem

# export PAGER=most
export MOST_INITFILE="$XDG_CONFIG_HOME"/most/mostrc

# export FZF_DEFAULT_COMMAND=locate

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
#

export RANGER_LOAD_DEFAULT_RC=FALSE
