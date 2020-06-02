# rofi-zeal
Use rofi to search documentation on Zeal and Man.

Dependencies
==========

  * rofi
  * zeal, or zeal-git
  * xfce4-terminal (for man)

How to use
==========
Just attach the script to a keyboard shortcut.

**Example for I3WM**

    cp ./rofi-zeal ~/.local/share/rofi
    bindsym $mod+Ctrl+d exec /home/zeioth/.local/share/rofi/rofi-zeal.sh

**Then use it to search like:**

    term     # Search on Zeal
    man term # Search on Man
    
    dd term  # Search on DevDocs
    s term   # Search on Stack Overflow
    med term # Search on Medium
    
    g term   # Search on Google
    d term   # Search on DuckDuckGo
    
