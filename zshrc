export PATH="/opt/homebrew/opt/python@3.10/bin:$PATH"
alias python="python3.10"

export PATH="/opt/homebrew/opt/python@3.10/bin:$PATH"
alias pip="pip3.10"
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/ahmed/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

fpath+=(/opt/homebrew/share/zsh/site-functions)
autoload -Uz compinit
compinit

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/ahmed/.rd/bin:$PATH"

# Nav & Dir
alias ..="cd .."
alias c='clear'
alias mkdir='mkdir -p'

# safety nets
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Git
alias gst="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gl="git log --oneline --graph --decorate"
alias gundo='git reset --soft HEAD~1'

# nvim
alias nv="nvim"
alias vim="nvim"
alias nvimconfig="nvim  ~/.config/nvim/"

# Mac
# Remove from quarantine 
unqu() {
  echo "Removing quarantine from: $1"
  xattr -dr com.apple.quarantine "$1" && echo "Done."
}

# zsh
alias zshconfig="nvim ~/.zshrc"
alias szsh="source ~/.zshrc"

# Homebrewu completions to search path
fpath=($(brew --prefix)/share/zsh-completions $fpath)

# Enable the advanced visual menu layout
autoload -U compinit && compinit
zstyle ':completion:*' menu select

