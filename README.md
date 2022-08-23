# ksudoku_breeze_dark_theme
A theme for the ksudoku game that matches the KDE Breeze Dark theme.  I felt this was something that was needed as I wanted a theme for ksudoku that matched the rest of the KDE Breeze Dark Theme so it the application blends in.
![KSudoku Breeze Dark Theme Preview](https://github.com/jaxhax-travis/ksudoku_breeze_dark_theme/raw/main/ksudoku_breeze_dark_screenshot.png)

# Installing/Uninstalling
Included is a `setup.sh` script to make it easy to install\uninstall the theme for a user.  This will copy the needed files to the `~/.local/share/ksudoku/themes/` folder.  This script will install the theme for the user, not the system.

## setup.sh: Help Screen
```
$ ./setup.sh -h

        ---===[ Ksudoku Breeze Dark Theme Setup ]===---

Install\Uninstall the ksudoku Breeze Dark Theme.

Syntax:
  setup.sh [-h|i|u]

Options:
  -h, --help          Show this help screen
  -i, --install       Install the theme
  -u, --uninstall     Uninstall the theme

```


## Example Install using the setup.sh script:
```
$ ./setup.sh --install

        ---===[ Ksudoku Breeze Dark Theme Setup ]===---

 [*] MAKE DIR: /home/user/.local/share/ksudoku/themes/
 [*] INSTALL: /home/user/.local/share/ksudoku/themes/ksudoku_breeze_dark_preview.png
 [*] INSTALL: /home/user/.local/share/ksudoku/themes/ksudoku_breeze_dark.desktop
 [*] INSTALL: /home/user/.local/share/ksudoku/themes/ksudoku_breeze_dark.svg
 [*] Note: You may need to restart ksudoku for the theme to load
 [+] Install Complete!

```


## Example Uninstall using the setup.sh script:
```
$ ./setup.sh --uninstall

        ---===[ Ksudoku Breeze Dark Theme Setup ]===---

 [*] REMOVE: /home/user/.local/share/ksudoku/themes/ksudoku_breeze_dark_preview.png
 [*] REMOVE: /home/user/.local/share/ksudoku/themes/ksudoku_breeze_dark.desktop
 [*] REMOVE: /home/user/.local/share/ksudoku/themes/ksudoku_breeze_dark.svg
 [+] Theme Uninstall Complete!

```
