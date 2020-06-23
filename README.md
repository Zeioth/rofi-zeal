# rofi-zeal
Use rofi to search documentation on Zeal and Man.

Dependencies
==========

  * rofi
  * zeal, or zeal-git
  * i3-sensible-terminal (for man)

How to use
==========
Just attach the script to a keyboard shortcut.

**Example for I3WM**

    cp ./rofi-zeal ~/.local/share/rofi
    bindsym $mod+Ctrl+d exec ~/.local/share/rofi/rofi-zeal.sh TERMINAL=xfce4-terminal

**Then use it to search like:**

    language:term     # Search on Zeal
    dd language term  # Search on DevDocs
    man term          # Search on Man
    
    s term            # Search on Stack Overflow
    med term          # Search on Medium
    g term            # Search on Google
    d term            # Search on DuckDuckGo
    
