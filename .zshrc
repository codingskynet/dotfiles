alias ls='eza'
alias ll='ls -alh'
alias rg='rg -p'

export LD_LIBRARY_PATH=$(rustc --print sysroot)/lib:$LD_LIBRARY_PATH
export DYLD_LIBRARY_PATH=$(rustc --print sysroot)/lib:$DYLD_LIBRARY_PATH

export PS1="%n@%1~ [%?] %# "
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#c6c6c6"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(atuin init zsh --disable-up-arrow)"

if [[ -f ~/.zshrc.local ]]; then
  source ~/.zshrc.local
fi
