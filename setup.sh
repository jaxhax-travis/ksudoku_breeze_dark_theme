#!/bin/bash
################################################################################
#
# Program: setup.sh
#
# Date: 08/22/2022
#
# Author: Travis Phillips
#
# Website: https://github.com/jaxhax-travis/ksudoku_breeze_dark_theme
#
# Purpose: This is a simple install/uninstall script for the ksudoku Breeze
#          Dark theme. This script makes it easy to install or remove the theme.
#
################################################################################

############################################
# Constants - Color Codes
############################################
B="\033[34;1m";
Y="\033[33;1m"
G="\033[32;1m"
R="\033[31;1m"
N="\033[0m";

############################################
# Constants - Paths
############################################
HOME_KSUDOKU_THEMES_DIR=~/.local/share/ksudoku/themes/;
REPO_DIR="$(dirname $(realpath '${BASH_SOURCE[0]}'))/";
KSUDOKU_THEME_FILES=(ksudoku_breeze_dark_preview.png \
                     ksudoku_breeze_dark.desktop \
                     ksudoku_breeze_dark.svg);

############################################
# Support Functions
############################################
print_banner() {
    echo -e "\n\t${Y}---===[ Ksudoku Breeze Dark Theme Setup ]===---${N}\n";
}

show_help() {
    # Print the scripts usage
    echo "Install\Uninstall the ksudoku Breeze Dark Theme.";
    echo "";
    echo -e "${B}Syntax:${N}";
    echo "  $(basename ${BASH_SOURCE[0]}) [-h|i|u]";
    echo "";
    echo -e "${B}Options:${N}";
    echo "  -h, --help          Show this help screen";
    echo "  -i, --install       Install the theme";
    echo "  -u, --uninstall     Uninstall the theme";
    echo "";
}

install_theme() {
    # Ensure the theme directory exist in the users home directory
    echo -e " [${B}*${N}] ${G}MAKE DIR:${N} ${B}${HOME_KSUDOKU_THEMES_DIR}${N}";
    mkdir -p ${HOME_KSUDOKU_THEMES_DIR};

    # Copy the files over to the user's theme directory
    for theme_file in ${KSUDOKU_THEME_FILES[@]}; do
        echo -e " [${B}*${N}] ${G}INSTALL:${N} ${B}${HOME_KSUDOKU_THEMES_DIR}${theme_file}${N}";
        cp "${REPO_DIR}${theme_file}" "${HOME_KSUDOKU_THEMES_DIR}${theme_file}";
    done;

    # Let the user know it's done and that they may need to restart ksudoku.
    echo -e " [${B}*${N}] ${Y}Note:${N} You may need to restart ksudoku for the theme to load";
    echo -e " [${G}+${N}] ${G}Install Complete!${N}\n";
}

uninstall_theme() {
    # Since we are uninstalling the theme, we only need to remove the files.
    # We can leave the themes folder since there maybe other themes installed
    # by the user.
    for theme_file in ${KSUDOKU_THEME_FILES[@]}; do
        echo -e " [${B}*${N}] ${R}REMOVE:${N} ${B}${HOME_KSUDOKU_THEMES_DIR}${theme_file}${N}";
        rm "${HOME_KSUDOKU_THEMES_DIR}${theme_file}";
    done;
    echo -e " [${G}+${N}] ${G}Theme Uninstall Complete!${N}\n";
}

main() {
    print_banner;

    # Check that we got an argument or print usage.
    if [ "$#" -ne 1 ]; then
        show_help;
        exit 1;
    fi

    # Handle the user argument.
    case "${1}" in
        -h|--help)
            show_help;
            exit 1;;
        -i|--install)
            install_theme;
            exit 0;;
        -u|--uninstall)
            uninstall_theme;
            exit 0;;
        *)
            show_help;
            exit 1;;
    esac;
}

main $@;
