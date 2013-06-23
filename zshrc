# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cira"

# Example aliases
 alias vish="mvim ~/.zshrc"
 alias ohmyzsh="mvim ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
#COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git svn tmux laravel themes last-working-directory osx colorize autojump brew composer command-not-found ruby rails svn)
#plugins=(git svn laravel themes last-working-directory osx colorize autojump brew composer command-not-found rails)
plugins=(git svn laravel last-working-directory osx colorize autojump brew composer command-not-found)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=~/.rbenv/versions/1.9.3/bin:$PATH
export PATH=/usr/sbin:/sbin:$PATH
export PATH=/Applications/MAMP/bin/php/php5.4.10/bin:./bin:/usr/local/bin:/usr/local/sbin:$PATH

source ~/.shell_aliases
if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi
