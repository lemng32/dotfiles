PLUGINS_DIR="$HOME/.zsh/plugins"

plugins_list=(
  "zsh-autosuggestions"
  "zsh-syntax-highlighting"
  "fzf-tab"
)

for plugin in "${plugins_list[@]}"; do
  plugin_path="${PLUGINS_DIR}/${plugin}/${plugin}.plugin.zsh"
  if [[ -f "$plugin_path" ]]; then
    source "$plugin_path"
  fi
done
