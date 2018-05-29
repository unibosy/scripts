# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

sdo() sudo zsh -c "$functions[$1]" "$@"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
#show or hide user
#export DEFAULT_USER="$(whoami)"
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="random"


# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
ZSH_THEME_RANDOM_CANDIDATES=("essembeh" "crcandy" "gianu" "jnrowe" "kafeitu" "muse" "ys" "strug" "tjkirch_mod" "dpoggi"
 )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh
cd /home/unibosy/ws

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export ZSH_THEME="afowler"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

## Set personal aliases, overriding those provided by oh-my-zsh libs,
## plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias logsx='ssh -p 20220 devops@115.239.228.77'
alias logxjp='ssh -p 22333  devops@121.201.118.236'
alias logst='ssh root@121.11.79.25'
alias /opt/rh/devtoolset-2/root/usr/bin/g++='g++'
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias -s py=vim
alias -s html=vim
alias -s tgz='tar zxvf'
alias -s .gz='tar -xf'
alias rrrr='. ~/.zshrc'
alias rrr='. ~/.zshrc'
alias rrrrr='. ~/.zshrc'
alias rrrrrr='. ~/.zshrc'
alias rrrrrrr='. ~/.zshrc'
alias rrrrrrrr='. ~/.zshrc'
alias rrrrrrrrr='. ~/.zshrc'
alias rrrrrrrrrr='. ~/.zshrc'
alias rrrrrrrrrrr='. ~/.zshrc'
alias mmm='cd /home/unibosy/ws/myGit'
alias mm='cd /home/unibosy/ws/myGit'
alias mmmm='cd /home/unibosy/ws/myGit'
alias mmmmm='cd /home/unibosy/ws/myGit'
alias mmmmmm='cd /home/unibosy/ws/myGit'
alias mmmmmmm='cd /home/unibosy/ws/myGit'
alias mmmmmmmm='cd /home/unibosy/ws/myGit'
alias mmmmmmmmm='cd /home/unibosy/ws/myGit'


################################################  tmux begin  ###############################################
#session
alias tls='tmux ls'
alias tat='tmux a -t'
alias tst='tmux switch -t'
alias tks='tmux kill-session -t'
alias tkillall='tmux kill-server'
alias tns='tmux new -s'
alias td='tmux detach'
#window
alias tnw='tmux new-window'
alias tlsw='tmux list-windows'
alias tsw='tmux select-window -t :'
#sessions should be nested with care
#unset TMUX
#alias killalltmux = 'tmux ls | grep : | cut -d. -f1 | awk '{print substr($1, 0, length($1)-1)}' | xargs kill'
#tmux_init()
#{
#    echo "asssssssssssssssssssssssssssss"
#    tmux 
#    #sessions should be nested with care
#    unset TMUX
#    tmux new-session -s "unibo" -d -n "local"
#    tmux new-window -n "other" 
#}

#if which tmux 2>&1 >/dev/null; then
#    test -z "$TMUX" && (tmux attach || tmux_init)
#fi

################################################  tmux end  ###############################################




##########################################.bashrc begin############################################
# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
#shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
#shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

## set a fancy prompt (non-color, unless we know we "want" color)
#case "$TERM" in
#    xterm-color) color_prompt=yes;;
#esac
#
## uncomment for a colored prompt, if the terminal has the capability; turned
## off by default to not distract the user: the focus in a terminal window
## should be on the output of commands, not on the prompt
##force_color_prompt=yes
#
#if [ -n "$force_color_prompt" ]; then
#    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
#	# We have color support; assume it's compliant with Ecma-48
#	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
#	# a case would tend to support setf rather than setaf.)
#	color_prompt=yes
#    else
#	color_prompt=yes
#    fi
#fi
#if [ "$color_prompt" = yes ]; then
#    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#else
#    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
#fi
#unset color_prompt force_color_prompt
#
## If this is an xterm set the title to user@host:dir
#case "$TERM" in
#xterm*|rxvt*)
#    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
#    ;;
#*)
#    ;;
#esac
## enable color support of ls and also add handy aliases
#if [ -x /usr/bin/dircolors ]; then
#    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
#    alias ls='ls --color=auto'
#    #alias dir='dir --color=auto'
#    #alias vdir='vdir --color=auto'
#
#    alias grep='grep --color=auto'
##    alias fgrep='fgrep --color=auto'
##    alias egrep='egrep --color=auto'
##fi
#"""
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
#
## some private info
alias v='gvim -X -n -i NONE -U NONE'
alias v='gvim -X -n -i NONE -U NONE'
alias ..='cd ..'
alias cdd='cd ../..'
alias cddd='cd ../../..'
alias cdddd='cd ../../../..'
alias cddddd='cd ../../../../..'
alias cdddddd='cd ../../../../../..'
alias cddddddd='cd ../../../../../../..'
alias cd..='cd ../.'
alias goh='cd /ws'
alias goc='cd /home/unibosy/ws/recording/code'
alias gol='cd /ws/dallas_roku-7.0.8817_11162015/sigma-sx/release/DispMips'
alias cdr='cd Agora_Recording_SDK_for_Linux_FULL/samples/cpp/'
alias cdrs='cd Agora_Recording_SDK_for_Linux_FULL.sym/samples/cpp/'
alias vi='vim'
export EDITOR=/usr/local/bin/vim
alias branch='git branch'
alias javas='source build.sh pre_set /usr/lib/jvm/java-8-oracle/include/'
alias runc='./java_run_server.sh myrobot com old'
alias runl='./java_run_server.sh myrobot live old'
alias cppc='./run_recorder.sh myrobot com old'
alias cppl='./run_recorder.sh myrobot live old'
alias cddemo='cd Agora_Recording_SDK_for_Linux_FULL/samples'
alias gomygit='cd /home/unibosy/ws/myGit'
alias gow='cd /home/unibosy/ws'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi



# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
#if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
#    . /etc/bash_completion
#fi
export PATH=$PATH:/usr/local/curl/bin:/opt/codesourcery/arm/bin:/opt/mipssde/bin:/usr/local/git/bin:/usr/bin/cscope:/bin:/usr/bin:/usr/local/bin:/home/unibosy/:/opt/gradle/gradle-3.4.1/bin:
export CC=/opt/rh/devtoolset-2/root/usr/bin/gcc                                                                                                                      
export CXX=/opt/rh/devtoolset-2/root/usr/bin/g++
export LINK=/opt/rh/devtoolset-2/root/usr/bin/g++
##########################################.bashrc end############################################
. /usr/share/autojump/autojump.sh
