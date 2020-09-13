if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

export PATH=$PATH:/Applications/"Android Studio.app"/Contents/jre/jdk/Contents/Home
export JAVA_HOME=/Applications/"Android Studio.app"/Contents/jre/jdk/Contents/Home


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/Tomoharu.Kawata/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/Tomoharu.Kawata/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/Tomoharu.Kawata/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/Tomoharu.Kawata/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export BASH_SILENCE_DEPRECATION_WARNING=1
