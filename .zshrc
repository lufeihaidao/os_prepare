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
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - --no-rehash)"
