# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
#export ZSH_THEME="risto"
#export ZSH_THEME="robbyrussell"
#export ZSH_THEME="clean"
 export ZSH_THEME="josh"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)
#plugins=(brew osx gem rails git ruby)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=/sw/bin:/sw/sbin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/Users/$USER/bin:$HOME/.rvm/bin
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/Users/$USER/bin:$HOME/.rvm/bin

# grml.org - emulate bash behavior ( default zsh key is ^[_ )
#insert-last-typed-word() { zle insert-last-word -- 0 -1 };
#zle -N insert-last-typed-word;
bindkey "^[." insert-last-word

. ~/.shell_aliases

