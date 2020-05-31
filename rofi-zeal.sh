#!/bin/bash
# A quick documentation file-finder based on rofi and zeal
# Requires: rofi, zeal, xfce4-terminal nerdfonts
files=/var/tmp/rofi-zeal_term_list

append_new_term() {
	# Delete term. Append on the first line.
	sed -i "/$input/d" $files
	sed -i "1i $input" "$files"
	# If file is bigger than 5MB, reset the log
	if [ $(find "$files" -type f -size +5000000c 2>/dev/null) ]; then
	  echo "" > "$files"
	fi
}

if [ -e $files ]; then
	# If file list exist, use it
	input=$(cat $files | rofi -dmenu -p "manual")
	else
	# There is no file list, create it and show menu only after that
	input=$(cat $files | rofi -dmenu -p "manual")
  #	The file if empty, initialize it, so we can insert on the top later
  if [ ! -s "$_file" ]
  then
    echo " " > "$files"
  fi
fi

case "$(echo $input | cut -d " " -f 1)" in
m)
	# search on man
  append_new_term
  mantoread=$(echo "$input" | cut -c 2- | xargs)
  exec xfce4-terminal -e "man $mantoread"
  ;;
man)
	# Search on man
	append_new_term
  mantoread=$(echo "$input" | cut -c 4- | xargs)
  exec xfce4-terminal -e "man $mantoread"
  ;;
d)
	# Search on DuckDuckGo
	append_new_term
  mantoread=$(echo "$input" | cut -c 2- | xargs)
  exec $BROWSER "https://duckduckgo.com/?q=$(echo $input | cut -d " " -f2-)" &> /dev/null &
  ;;
d)
	# Search on Google
	append_new_term
  mantoread=$(echo "$input" | cut -c 2- | xargs)
  exec $BROWSER "https://www.google.com/search?q=$(echo $input | cut -d " " -f2-)" &> /dev/null &
  ;;
s)
	# Search on stack overflow
	append_new_term
  mantoread=$(echo "$input" | cut -c 2- | xargs)
  exec $BROWSER "https://stackoverflow.com/search?q=$(echo $input | cut -d " " -f2-)" &> /dev/null &
  ;;
*)
  # Open zeal only if there's text input
  if [ ! -z "$input" ]
  then
		append_new_term
    exec zeal $input "$(echo $input | sed 's/^....//g')" & # Open zeal
  fi
  ;;
esac


