export TERM="xterm-256color"
# amazon web service
export PATH=/usr/local/bin/:$PATH

# this is nvm
export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh

export ZSH="/Users/mwang/.oh-my-zsh"

local user_symbol="$"
if [[ $(print -P "%#") =~ "#" ]]; then
    user_symbol = "#"
fi

# ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="spaceship"

plugins=(
  git
  node
  dotenv
  zsh-syntax-highlighting
  zsh-autosuggestions
  colorize
)

source $ZSH/oh-my-zsh.sh
