# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=20000
HISTFILESIZE=2000

umask 022
alias v='vim'
alias indent='echo -e "G=gg\n:wq\n" | vim'

function gitauto() {
    git add .;
    COMMIT_MESSAGE=`git status | grep -e "modified" -e "new file" -e "deleted"`;
    git commit -m $COMMIT_MESSAGE;
    git push origin main; 
}
alias gitauto=gitauto


# terminal setting for macOS
case "${OSTYPE}" in
    darwin*)
        osascript -e 'tell application "Terminal"' -e 'set bounds of front window to {1, 1, 700, 3000}' -e 'end tell'
        defaults write -g CGFontRenderingFontSmoothingDisabled -bool YES
        /usr/bin/osascript -e "tell application \"Terminal\" to set current settings of first window to settings set \"Pro\""
        ;;
esac

# git-prompt
source ~/.dotfiles/git-prompt.sh

# git-completion
#source ~/.dotfiles/git-completion.bash
fpath=(~/.dotfiles $fpath)
autoload -Uz compinit && compinit

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

# completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# PS1 
setopt PROMPT_SUBST ; PS1='%F{green}toxumuharu@%m%f:%F{blue}%~%f %F{red}$(__git_ps1 "(%s)")%f$ '

