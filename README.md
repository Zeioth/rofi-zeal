# rofi-zeal
Use rofi to search documentation on Zeal and Man.

![zeal](https://user-images.githubusercontent.com/3357792/218284465-55bc4bbd-cb48-433a-8892-836783cf32b7.png)
![zeal2](https://user-images.githubusercontent.com/3357792/218284485-4ea7d585-c067-4943-b891-52b9df0d61ab.png)


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
    g term            # Search on Google
    d term            # Search on DuckDuckGo

**Troubleshooting**

* **I'd like to change the terminal when I use man:** Define the env var `TERMINAL` with the one you like.
* **I'd like to pass my own rofi config**: Define the env var `ROFI_CONFIG_FILE`.

## How to contribute to the project
I'm don't use rofi myself anymore but I will review and merge pull requests, so please send your PR if you would like to include a new feature.

## Wanted features
* Search history → [Taking care terms don't overlap](https://github.com/Zeioth/rofi-zeal/issues/3)
