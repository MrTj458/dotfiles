# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="/home/tj/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(vi-mode tmux vscode git golang node npm python poetry)

source $ZSH/oh-my-zsh.sh

# User configuration

alias la="ls -a"
alias ll="ls -l"
alias lla="ls -la"

docker_remove_all_containers () {
	docker rm $(docker ps -a | awk 'NR > 1 {print $1}')
}

docker_remove_all_images () {
	docker image rm $(docker images | awk 'NR > 1 {print $3}')
}

docker_remove_all_volumes () {
	docker volume rm $(docker volume ls | awk 'NR > 1 {print $2}')
}

docker_remove_all_networks () {
	docker network rm $(docker network ls | awk 'NR > 1 {print $1}')
}

alias drmc=docker_remove_all_containers
alias drmi=docker_remove_all_images
alias drmv=docker_remove_all_volumes
alias drmn=docker_remove_all_networks
alias pua="pip freeze | xargs pip uninstall -y"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"
export PATH=/usr/local/go/bin:$PATH
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"
export PATH="$HOME/.dotnet/tools:$PATH"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(rbenv init - zsh)"
