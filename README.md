# rofi-zeal
Use rofi to search documentation on Zeal and Man.

Dependencies
==========

  * rofi
  * zeal, or zeal-git
  * i3-sensible-terminal (for man)

How to install
==========
Just attach the script to a keyboard shortcut.

**If you install from AUR run**

    yay -S rofi-zeal-git
    rofi-zeal

**If you install from git run**

    # Install
    mkdir -p ~/.local/share/rofi/rofi-zeal/
    cp "${srcdir}"/rofi-zeal/rofi-zeal.sh ~/.local/share/rofi/rofi-zeal/rofi-zeal.sh
    chmod u+x ~/.local/share/rofi/rofi-zeal/rofi-zeal.sh
    ln -sf ~/.local/share/rofi/rofi-zeal/rofi-zeal.sh ~/.local/bin/rofi-zeal

    # Then run rofi-zeal
    rofi-zeal

**Example for I3WM**

    bindsym $mod+Ctrl+d exec rofi-zeal

**Then use it to search like:**

    language:term     # Search on Zeal
    dd language term  # Search on DevDocs
    man term          # Search on Man
    
    s term            # Search on Stack Overflow
    med term          # Search on Medium
    g term            # Search on Google
    d term            # Search on DuckDuckGo

**Troubleshooting**

* **I'd like to change the terminal when I use man:** Define the env var TERMINAL with the one you like.
