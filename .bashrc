# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
	*i*) ;;
	*) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=20000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
	debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
	xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
	if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
		# We have color support; assume it's compliant with Ecma-48
		# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
		# a case would tend to support setf rather than setaf.)
		color_prompt=yes
	else
		color_prompt=
	fi
fi

if [ "$color_prompt" = yes ]; then
	PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
	PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
	xterm*|rxvt*)
		PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
		;;
	*)
		;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	#alias dir='dir --color=auto'
	#alias vdir='vdir --color=auto'

	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

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
if ! shopt -oq posix; then
	if [ -f /usr/share/bash-completion/bash_completion ]; then
		. /usr/share/bash-completion/bash_completion
	elif [ -f /etc/bash_completion ]; then
		. /etc/bash_completion
	fi
fi

#Toxumuharu

alias v='vim'
alias cls='clear'
alias rd='rm -r -f'
alias l='ls'
alias indent='echo -e "G=gg\n:wq\n" | vim'
#ex) echo -e "G=gg\n:wq\n" | vim ./myfile.c
umask 022


case "${OSTYPE}" in
	darwin*)
#osascript -e 'tell application "Terminal"' -e 'set bounds of front window to {1, 1, 580, 800}' -e 'end tell'
alias ls="ls -G"
alias ll="ls -lG"
alias la="ls -laG"
alias mi="open -a /Applications/mi.app"
alias chrome="open -a /Applications/Google Chrome.app"
alias safari="open -a /Applications/Safari.app"
alias xcode="open -a /Applications/Xcode.app"
alias firefox="open -a /Applications/Firefox.app"
alias itunes="open -a /Applications/iTunes.app"
alias mail="open -a /Applications/mail.app"
alias facetime="open -a /Applications/FaceTime.app"
alias numbers="open -a /Applications/Numbers.app"
alias pages="open -a /Applications/Pages.app"
alias keynote="open -a /Applications/Keynote.app"
#/usr/bin/osascript -e "tell application \"Terminal\" to set current settings of first window to settings set \"Pro\""
		;;
	linux*)
alias ls='ls --color'
alias ll='ls -l --color'
alias la='ls -la --color'
alias ll='ls -alFG'


string="Microsoft"
if [ "$(uname -r | sed -n 's/.*\(Microsoft *\).*/\1/p')" = $string ]
then
alias n=notepad++.exe
#alias vs=devenv.exe
alias open=explorer.exe
#alias atom=atom.exe
#alias ls='ls -F --color=auto --show-control-chars -I "NTUSER.DAT*"'
alias tm=texmaker.exe
else
alias open=xdg-open
fi
		;;
esac

. .bashrc
. .inputrc

#whthout hostname
PS1='\[\e[32m\]Toxumuharu:\[\033[01;34m\]\W\[\033[00m\]\$ '
#with hostname
#PS1='\[\e[32m\]Toxumuharu@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '
