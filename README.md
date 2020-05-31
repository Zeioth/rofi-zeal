# rofi-zeal
Use rofi to search documentation on Zeal and Man.

Dependencies
==========

  * rofi
  * zeal, or zeal-git
  * xfce4-terminal

How to use
==========
Just attach the script to a keyboard shortcut.

Example for I3WM

    cp ./rofi-zeal ~/.local/share/rofi
    bindsym $mod+Ctrl+d exec /home/zeioth/.local/share/rofi/rofi-zeal.sh
