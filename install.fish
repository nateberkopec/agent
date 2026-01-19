#!/usr/bin/env fish

set -l script_dir (cd (dirname (status --current-filename)); and pwd)
set -l dest "/usr/local/bin"

if test (count $argv) -gt 0
  set dest $argv[1]
end

if test -f "$dest"
  set dest (dirname "$dest")
end

if not test -d "$dest"
  mkdir -p "$dest"
end

set -l target "$dest/agent"
cp "$script_dir/bin/agent" "$target"
chmod +x "$target"

printf "Installed agent to %s\n" "$target"
