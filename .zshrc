export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="mortalscumbag"
alias vi='vim'
alias cls='clear'
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
alias -s php=vi
alias -s py=vi
alias -s rb=vi
alias -s html=vi
plugins=(git autojump)
source $ZSH/oh-my-zsh.sh
source ~/.nvm/nvm.sh
source ~/.zshenv
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh
