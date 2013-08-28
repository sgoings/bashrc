# Add npm bin to path.
if which npm &> /dev/null; then
  path-append $(npm -g bin 2>/dev/null)
  eval "$(npm completion)"
fi
