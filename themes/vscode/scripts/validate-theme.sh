#!/usr/bin/env sh

set -eu

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
repo_root=$(CDPATH= cd -- "$script_dir/../../.." && pwd)
extension_dir="$repo_root/themes/vscode"
themes_dir="$extension_dir/themes"
tokens_file="$repo_root/tokens/tokens.json"
package_file="$extension_dir/package.json"
light_file="$themes_dir/claude-cream-color-theme.json"
dark_file="$themes_dir/claude-cream-dark-color-theme.json"

jq empty "$tokens_file" "$package_file" "$themes_dir"/*.json

jq -e '
  .version == "0.2.0"
  and (.contributes.themes | length) == 5
  and ([.contributes.themes[].label] | unique | length) == 5
' "$package_file" >/dev/null

jq -r '.contributes.themes[].path' "$package_file" |
while IFS= read -r theme_path; do
  test -f "$extension_dir/${theme_path#./}"
done

jq -e '
  (.editor | keys | sort) ==
    ["dark","dark-dimmed","dark-high-contrast","light","light-high-contrast"]
  and ([.editor[] | keys | sort] | unique | length) == 1
  and ([.syntax[] | keys | sort] | unique | length) == 1
' "$tokens_file" >/dev/null

jq -s -e '
  (.[0].colors | keys | sort) == (.[1].colors | keys | sort)
  and (.[0].tokenColors | length) >= 28
  and (.[0].tokenColors | length) <= 35
  and (.[0].tokenColors | length) == (.[1].tokenColors | length)
' "$light_file" "$dark_file" >/dev/null

for scope in \
  invalid.illegal \
  source.regexp \
  support.type.property-name.json \
  markup.strikethrough \
  meta.diff.range \
  brackethighlighter.unmatched
do
  jq -e --arg scope "$scope" '
    [.tokenColors[].scope] | tostring | contains($scope)
  ' "$light_file" >/dev/null
  jq -e --arg scope "$scope" '
    [.tokenColors[].scope] | tostring | contains($scope)
  ' "$dark_file" >/dev/null
done

jq -e '
  .include == "./claude-cream-dark-color-theme.json"
  and .name == "Claude Cream Dark Dimmed"
' "$themes_dir/claude-cream-dark-dimmed-color-theme.json" >/dev/null

jq -e '
  .include == "./claude-cream-color-theme.json"
  and .name == "Claude Cream High Contrast"
' "$themes_dir/claude-cream-high-contrast-color-theme.json" >/dev/null

jq -e '
  .include == "./claude-cream-dark-color-theme.json"
  and .name == "Claude Cream Dark High Contrast"
' "$themes_dir/claude-cream-dark-high-contrast-color-theme.json" >/dev/null

for json_file in "$tokens_file" "$themes_dir"/*.json
do
  jq -e '
    [.. | strings | select(startswith("#"))]
    | all(test("^#[0-9a-fA-F]{6}([0-9a-fA-F]{2})?$"))
  ' "$json_file" >/dev/null
done

if grep -Eiq '#0969da|#2f81f7|#58a6ff|#f6f8fa' \
  "$tokens_file" "$themes_dir"/*.json
then
  echo "Forbidden GitHub blue or cold gray found" >&2
  exit 1
fi

printf '%s\n' "Claude Cream VS Code themes: validation passed (5 themes)"
