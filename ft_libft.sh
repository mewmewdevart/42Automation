#!/bin/bash

echo "(\ 																	"
echo "\'\																	"
echo " \'\     __________  													"
echo " / '|   ()_________)	- Automation for my 42 projects [LIBFT] 		"
echo " \ '/    \ ~~~~~~~~ \													"
echo "   \       \ ~~~~~~   \				+ gnl							"
echo "   ==).      \__________\			+ ft_printf							"
echo "  (__)       ()__________) 											"
echo "______________________________________________________________________"

read -p "What is your username on GitHub? " USERNAME
USERNAME=${USERNAME:-"mewmewdevart"}

read -p "What is your 'libft' called on GitHub? " LIBFT
LIBFT=${LIBFT:-"libft"}

echo "What protocol would you like to use to clone it? "
read -p "HTTPS or SSH? " PROTOCOL
PROTOCOL=${PROTOCOL:-"SSH"}

echo "Creating directories..."
mkdir -p sources libraries
echo "Done."

echo "Cloning your 'libft' into 'libraries'..."
if [[ $PROTOCOL == "SSH" || $PROTOCOL == "ssh" ]]; then
	git clone git@github.com:$USERNAME/$LIBFT.git libraries/libft 2> /dev/null
elif [[ $PROTOCOL == "HTTPS" || $PROTOCOL == "https" ]]; then
	git clone https://github.com/$USERNAME/$LIBFT.git libraries/libft 2> /dev/null
else
	echo "Invalid protocol."
	exit 1
fi
echo "Done."

# adjusts in my archives
mv libraries/libft libraries/libs
mv libraries/libs/libft/ libraries/
rm -rf libraries/libs
rm -rf libraries/libft/README.md

echo "Downloading 'Makefile'..."
wget https://raw.githubusercontent.com/mewmewdevart/42Automation/main/libftSources/Makefile 2> /dev/null
echo "Done."

echo "Downloading '.gitignore'..."
wget https://raw.githubusercontent.com/mewmewdevart/42Automation/main/libftSources/.gitignore 2> /dev/null
echo "Done."