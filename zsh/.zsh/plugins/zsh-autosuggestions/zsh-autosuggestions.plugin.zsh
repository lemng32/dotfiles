source ${0:A:h}/zsh-autosuggestions/zsh-autosuggestions.zsh

typeset -g ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#7f849c'

typeset -ga ZSH_AUTOSUGGEST_STRATEGY
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
