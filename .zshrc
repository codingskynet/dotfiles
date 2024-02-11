alias ls='exa'
alias ll='ls -alh'

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#c6c6c6"

# rust config
export RUST_BACKTRACE=1
# export RUST_MIN_STACK=33554432  # 32 MiB

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(atuin init zsh --disable-up-arrow)"
