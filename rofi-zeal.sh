#!/bin/bash
# A quick documentation file-finder based on rofi and zeal
# Requires: rofi, zeal, xfce4-terminal nerdfonts
files=/tmp/.zealutous_file_list

append_new_term() {
	# append only if doesn't exist
	grep -q "$input" "$files" || sed  -i "1i $input" "$files"
	# If file is bigger than 5MB, reset the log
	if [ $(find "$files" -type f -size +5000000c 2>/dev/null) ]; then
	  echo "" > "$files"
	fi
}

if [ -e $files ]; then
	# File list exist, use it
	input=$(cat $files | rofi -dmenu -p "manual")
	else
	# There is no file list, create it and show menu only after that
	input=$(cat $files | rofi -dmenu -p "manual")
fi

case "$(echo $input | cut -d " " -f 1)" in
m)
  append_new_term
  mantoread=$(echo "$input" | cut -c 2- | xargs)
  exec xfce4-terminal -e "man $mantoread"
  ;;
man)
	append_new_term
  mantoread=$(echo "$input" | cut -c 4- | xargs)
  exec xfce4-terminal -e "man $mantoread"
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


