#!/bin/bash
# A quick documentation finder based on rofi and zeal.
# Requires: rofi, zeal, i3-sensible-terminal


# ROFI
# =============================================================================
if [ -n "$ROFI_CONFIG_FILE" ]; then
  input=$(rofi -dmenu -p "rofi-zeal" -config "$ROFI_CONFIG_FILE")
else
  input=$(rofi -dmenu -theme-str 'entry { placeholder: ""; }' -p "rofi-zeal")
fi


# DOCUMENTATION BACKEND
# =============================================================================
case "$(echo "$input" | cut -d " " -f 1)" in
man)
  mantoread=$(echo "$input" | cut -c 4- | xargs)
  i3-sensible-terminal -e "man $mantoread"
  ;;
d) # DuckDuckGo
  mantoread=$(echo "$input" | cut -c 2- | xargs)
  exec xdg-open "https://duckduckgo.com/?q=$mantoread" &> /dev/null &
  ;;
g) # Google
  mantoread=$(echo "$input" | cut -c 2- | xargs)
  exec xdg-open "https://www.google.com/search?q=$mantoread" &> /dev/null &
  ;;
s) # Stack overflow
  mantoread=$(echo "$input" | cut -c 2- | xargs)
  exec xdg-open "https://stackoverflow.com/search?q=$mantoread" &> /dev/null &
  ;;
dd) # DevDocs
  mantoread=$(echo "$input" | cut -c 3- | xargs)
  exec xdg-open "https://devdocs.io/search?q=$mantoread" &> /dev/null &
  ;;
*)
  # Open zeal only if there's text input
  if [ -n "$input" ]
  then
    exec zeal "$input" "$(echo "$input" | sed 's/^....//g')" &
  fi
  ;;
esac
